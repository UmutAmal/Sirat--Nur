import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

final RegExp _seedRowPattern = RegExp(
  r"'quran_surah', 'Surah (\d+)', '([^']+)', NULL, (\d+), NULL, '([^']+)', 'ar', '([^']+)', TIMESTAMPTZ '([^']+)'",
  multiLine: true,
);

class VerifiedQuranAudioSeedRow {
  const VerifiedQuranAudioSeedRow({
    required this.surahNumber,
    required this.reciterId,
    required this.audioUrl,
    required this.sourceUrl,
    required this.verifiedAt,
  });

  final int surahNumber;
  final String reciterId;
  final Uri audioUrl;
  final Uri sourceUrl;
  final DateTime verifiedAt;

  String get fileName => '${surahNumber.toString().padLeft(3, '0')}.mp3';

  Map<String, Object?> toJson(String localPath) => {
    'surah_number': surahNumber,
    'reciter': reciterId,
    'audio_url': audioUrl.toString(),
    'source': sourceUrl.toString(),
    'verified_at': verifiedAt.toUtc().toIso8601String(),
    'local_path': localPath,
  };
}

class VerifiedQuranAudioMirrorSummary {
  const VerifiedQuranAudioMirrorSummary({
    required this.requested,
    required this.downloaded,
    required this.skipped,
    required this.failed,
    required this.outputDir,
  });

  final int requested;
  final int downloaded;
  final int skipped;
  final List<String> failed;
  final Directory outputDir;
}

String describeQuranAudioMirrorFailure(Object error) {
  if (error is TimeoutException) {
    return 'network timeout';
  }
  if (error is SocketException) {
    return 'network error';
  }
  if (error is HandshakeException) {
    return 'tls error';
  }
  if (error is HttpException) {
    return 'http error';
  }
  if (error is FileSystemException) {
    return 'file system error';
  }
  return 'unexpected mirror error';
}

List<VerifiedQuranAudioSeedRow> parseVerifiedQuranAudioSeed(String sql) {
  final rows = <VerifiedQuranAudioSeedRow>[];

  for (final match in _seedRowPattern.allMatches(sql)) {
    final surahFromTitle = int.parse(match.group(1)!);
    final audioUrl = Uri.parse(match.group(2)!);
    final surahNumber = int.parse(match.group(3)!);
    final reciterId = match.group(4)!;
    final sourceUrl = Uri.parse(match.group(5)!);
    final verifiedAt = DateTime.parse(match.group(6)!).toUtc();

    if (surahFromTitle != surahNumber) {
      throw FormatException(
        'Seed row title/surah mismatch for reciter $reciterId: '
        '$surahFromTitle != $surahNumber',
      );
    }
    if (!audioUrl.isScheme('https')) {
      throw FormatException(
        'Audio URL must use HTTPS for reciter $reciterId, surah $surahNumber',
      );
    }
    if (!sourceUrl.isScheme('https')) {
      throw FormatException(
        'Source URL must use HTTPS for reciter $reciterId, surah $surahNumber',
      );
    }

    rows.add(
      VerifiedQuranAudioSeedRow(
        surahNumber: surahNumber,
        reciterId: reciterId,
        audioUrl: audioUrl,
        sourceUrl: sourceUrl,
        verifiedAt: verifiedAt,
      ),
    );
  }

  return List.unmodifiable(rows);
}

Map<String, List<VerifiedQuranAudioSeedRow>> buildVerifiedQuranAudioCatalog(
  Iterable<VerifiedQuranAudioSeedRow> rows,
) {
  final catalog = <String, List<VerifiedQuranAudioSeedRow>>{};

  for (final row in rows) {
    catalog
        .putIfAbsent(row.reciterId, () => <VerifiedQuranAudioSeedRow>[])
        .add(row);
  }

  return Map.unmodifiable({
    for (final entry in catalog.entries)
      entry.key: List<VerifiedQuranAudioSeedRow>.unmodifiable(
        entry.value..sort((a, b) => a.surahNumber.compareTo(b.surahNumber)),
      ),
  });
}

Set<String>? parseCsvSelection(String? raw) {
  if (raw == null || raw.trim().isEmpty) {
    return null;
  }

  return raw
      .split(',')
      .map((part) => part.trim())
      .where((part) => part.isNotEmpty)
      .toSet();
}

Set<int>? parseSurahSelection(String? raw) {
  final values = parseCsvSelection(raw);
  if (values == null) {
    return null;
  }

  final surahs = <int>{};
  for (final value in values) {
    final surahNumber = int.tryParse(value);
    if (surahNumber == null || surahNumber < 1 || surahNumber > 114) {
      throw FormatException('Invalid surah selection: $value');
    }
    surahs.add(surahNumber);
  }

  return surahs;
}

Future<VerifiedQuranAudioMirrorSummary> mirrorVerifiedQuranAudio({
  required File seedFile,
  required Directory outputDir,
  Set<String>? reciterSelection,
  Set<int>? surahSelection,
  bool overwrite = false,
}) async {
  if (!seedFile.existsSync()) {
    throw FileSystemException(
      'Verified Quran audio seed file not found',
      seedFile.path,
    );
  }

  final rows = parseVerifiedQuranAudioSeed(seedFile.readAsStringSync());
  final selectedRows =
      rows.where((row) {
        final reciterMatches =
            reciterSelection == null ||
            reciterSelection.contains(row.reciterId);
        final surahMatches =
            surahSelection == null || surahSelection.contains(row.surahNumber);
        return reciterMatches && surahMatches;
      }).toList()..sort((a, b) {
        final reciterCompare = a.reciterId.compareTo(b.reciterId);
        if (reciterCompare != 0) {
          return reciterCompare;
        }
        return a.surahNumber.compareTo(b.surahNumber);
      });

  if (selectedRows.isEmpty) {
    throw StateError(
      'No verified Quran audio rows matched the current selection.',
    );
  }

  await outputDir.create(recursive: true);
  final httpClient = HttpClient();
  final manifest = <Map<String, Object?>>[];
  final failures = <String>[];
  var downloaded = 0;
  var skipped = 0;

  try {
    for (final row in selectedRows) {
      final reciterDir = Directory(p.join(outputDir.path, row.reciterId));
      await reciterDir.create(recursive: true);
      final targetFile = File(p.join(reciterDir.path, row.fileName));

      if (!overwrite &&
          targetFile.existsSync() &&
          targetFile.lengthSync() > 0) {
        skipped++;
        manifest.add(row.toJson(targetFile.path));
        continue;
      }

      try {
        final request = await httpClient.getUrl(row.audioUrl);
        final response = await request.close();
        if (response.statusCode != HttpStatus.ok) {
          failures.add(
            '${row.reciterId}/${row.fileName}: HTTP ${response.statusCode}',
          );
          continue;
        }

        final sink = targetFile.openWrite();
        await response.pipe(sink);
        await sink.flush();
        await sink.close();

        if (!targetFile.existsSync() || targetFile.lengthSync() == 0) {
          failures.add('${row.reciterId}/${row.fileName}: empty file');
          if (targetFile.existsSync()) {
            targetFile.deleteSync();
          }
          continue;
        }

        downloaded++;
        manifest.add(row.toJson(targetFile.path));
      } catch (error) {
        failures.add(
          '${row.reciterId}/${row.fileName}: '
          '${describeQuranAudioMirrorFailure(error)}',
        );
        if (targetFile.existsSync()) {
          targetFile.deleteSync();
        }
      }
    }
  } finally {
    httpClient.close(force: true);
  }

  final manifestFile = File(p.join(outputDir.path, 'manifest.json'));
  manifestFile.writeAsStringSync(
    const JsonEncoder.withIndent('  ').convert({
      'generated_at': DateTime.now().toUtc().toIso8601String(),
      'requested': selectedRows.length,
      'downloaded': downloaded,
      'skipped': skipped,
      'failed': failures,
      'files': manifest,
    }),
  );

  return VerifiedQuranAudioMirrorSummary(
    requested: selectedRows.length,
    downloaded: downloaded,
    skipped: skipped,
    failed: List.unmodifiable(failures),
    outputDir: outputDir,
  );
}

void _printUsage() {
  stdout.writeln('''
Verified Quran audio mirror tool

Usage:
  dart run tool/download_verified_quran_audio.dart [options]

Options:
  --seed=<path>         Verified SQL seed file. Default: content_seed_quran_audio.sql
  --output-dir=<path>   Output directory. Default: build/verified_quran_audio
  --reciters=<ids>      Comma-separated reciter ids, e.g. alafasy,husary
  --surahs=<nums>       Comma-separated surah numbers, e.g. 1,2,36
  --overwrite           Re-download files even if they already exist
  --help                Show this help
''');
}

Future<void> main(List<String> args) async {
  String seedPath = 'content_seed_quran_audio.sql';
  String outputPath = p.join('build', 'verified_quran_audio');
  String? recitersRaw;
  String? surahsRaw;
  var overwrite = false;

  for (final arg in args) {
    if (arg == '--help') {
      _printUsage();
      return;
    }
    if (arg == '--overwrite') {
      overwrite = true;
      continue;
    }
    if (arg.startsWith('--seed=')) {
      seedPath = arg.substring('--seed='.length);
      continue;
    }
    if (arg.startsWith('--output-dir=')) {
      outputPath = arg.substring('--output-dir='.length);
      continue;
    }
    if (arg.startsWith('--reciters=')) {
      recitersRaw = arg.substring('--reciters='.length);
      continue;
    }
    if (arg.startsWith('--surahs=')) {
      surahsRaw = arg.substring('--surahs='.length);
      continue;
    }

    throw FormatException('Unsupported argument: $arg');
  }

  final summary = await mirrorVerifiedQuranAudio(
    seedFile: File(seedPath),
    outputDir: Directory(outputPath),
    reciterSelection: parseCsvSelection(recitersRaw),
    surahSelection: parseSurahSelection(surahsRaw),
    overwrite: overwrite,
  );

  stdout.writeln(
    'Verified Quran audio mirror finished: '
    'requested=${summary.requested}, '
    'downloaded=${summary.downloaded}, '
    'skipped=${summary.skipped}, '
    'failed=${summary.failed.length}, '
    'output=${summary.outputDir.path}',
  );

  if (summary.failed.isNotEmpty) {
    for (final failure in summary.failed) {
      stderr.writeln('FAILED: $failure');
    }
    exitCode = 1;
  }
}
