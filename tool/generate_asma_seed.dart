import 'dart:io';

import 'package:sirat_i_nur/core/constants/asma_ul_husna_names.dart';

const String defaultAsmaSeedOutput = 'content_seed_asma_ul_husna.sql';
const String defaultAsmaSource =
    'https://islamansiklopedisi.org.tr/esma-i-husna';

String buildAsmaUlHusnaSeedSql({
  required DateTime verifiedAt,
  String source = defaultAsmaSource,
}) {
  final buffer = StringBuffer()
    ..writeln(
      '-- Verified Asma-ul-Husna seed generated from bundled TDV-aligned data.',
    )
    ..writeln('-- Source: $source')
    ..writeln();

  for (final item in asmaUlHusnaNames) {
    final id = item['id'] as int;
    final translations = Map<String, dynamic>.from(item['translations'] as Map);
    final meaningTr = translations['tr']?.toString() ?? '';
    final meaningEn = translations['en']?.toString() ?? '';

    if (meaningTr.trim().isEmpty || meaningEn.trim().isEmpty) {
      throw StateError('Asma row $id is missing TR/EN meaning.');
    }

    buffer
      ..writeln('INSERT INTO public.asma_ul_husna (')
      ..writeln('  id, name_ar, transliteration, meaning_tr, meaning_en,')
      ..writeln('  audio_url, storage_path, source, verified_at')
      ..writeln(') VALUES (')
      ..writeln('  $id,')
      ..writeln("  '${_escapeSql(item['arabic'].toString())}',")
      ..writeln("  '${_escapeSql(item['transliteration'].toString())}',")
      ..writeln("  '${_escapeSql(meaningTr)}',")
      ..writeln("  '${_escapeSql(meaningEn)}',")
      ..writeln('  NULL,')
      ..writeln('  NULL,')
      ..writeln("  '${_escapeSql(source)}',")
      ..writeln("  TIMESTAMPTZ '${verifiedAt.toUtc().toIso8601String()}'")
      ..writeln(') ON CONFLICT (id) DO UPDATE SET')
      ..writeln('  name_ar = EXCLUDED.name_ar,')
      ..writeln('  transliteration = EXCLUDED.transliteration,')
      ..writeln('  meaning_tr = EXCLUDED.meaning_tr,')
      ..writeln('  meaning_en = EXCLUDED.meaning_en,')
      ..writeln('  audio_url = EXCLUDED.audio_url,')
      ..writeln('  storage_path = EXCLUDED.storage_path,')
      ..writeln('  source = EXCLUDED.source,')
      ..writeln('  verified_at = EXCLUDED.verified_at;')
      ..writeln();
  }

  return buffer.toString();
}

String _escapeSql(String value) => value.replaceAll("'", "''");

void _printUsage() {
  stdout.writeln('''
Generate production Asma-ul-Husna Supabase seed SQL.

Usage:
  dart run tool/generate_asma_seed.dart [options]

Options:
  --output=<path>            Output SQL path. Default: $defaultAsmaSeedOutput
  --verified-at=<timestamp>  Override verified_at (ISO-8601 UTC).
  --help                     Show this help.
''');
}

void main(List<String> arguments) {
  var outputPath = defaultAsmaSeedOutput;
  DateTime verifiedAt = DateTime.now().toUtc();

  for (final argument in arguments) {
    if (argument == '--help' || argument == '-h') {
      _printUsage();
      return;
    } else if (argument.startsWith('--output=')) {
      outputPath = argument.substring('--output='.length).trim();
    } else if (argument.startsWith('--verified-at=')) {
      verifiedAt = DateTime.parse(
        argument.substring('--verified-at='.length).trim(),
      ).toUtc();
    } else {
      throw FormatException('Unknown argument: $argument');
    }
  }

  final outputFile = File(outputPath);
  if (outputFile.parent.path != '.' && !outputFile.parent.existsSync()) {
    outputFile.parent.createSync(recursive: true);
  }
  outputFile.writeAsStringSync(buildAsmaUlHusnaSeedSql(verifiedAt: verifiedAt));
  stdout.writeln(
    'Generated ${outputFile.path} with ${asmaUlHusnaNames.length} verified Asma-ul-Husna rows.',
  );
}
