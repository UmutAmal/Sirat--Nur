import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sirat_i_nur/core/network/supabase_config.dart';
import 'package:sirat_i_nur/core/network/supabase_storage_url.dart'
    as storage_url;
import 'package:supabase_flutter/supabase_flutter.dart';

typedef SurahDownloadProgress =
    void Function(double progress, int surahNumber, int totalSurahs);

const int _mp3HeaderProbeBytes = 16;

class OfflineDownloadBatchResult {
  const OfflineDownloadBatchResult({
    required this.totalSurahs,
    required this.succeededSurahs,
    required this.failedSurahs,
    required this.wasCanceled,
  });

  final int totalSurahs;
  final int succeededSurahs;
  final List<int> failedSurahs;
  final bool wasCanceled;

  int get failedCount => failedSurahs.length;

  bool get hasFailures => failedSurahs.isNotEmpty;

  bool get allSucceeded => !wasCanceled && succeededSurahs == totalSurahs;
}

String? resolvePlayableCloudAudioUrl(
  Map<String, dynamic> row, {
  String bucketName = SupabaseConfig.quranAudioBucket,
}) {
  final storagePath = row['storage_path']?.toString().trim();
  if (storagePath != null && storagePath.isNotEmpty) {
    try {
      return storage_url.buildSupabaseStoragePublicUrl(
        storagePath,
        bucketName: bucketName,
      );
    } on FormatException {
      return null;
    }
  }

  return null;
}

String _readCloudAudioString(Map<String, dynamic> row, List<String> keys) {
  for (final key in keys) {
    final value = row[key]?.toString().trim();
    if (value != null && value.isNotEmpty) {
      return value;
    }
  }

  return '';
}

bool hasVerifiedCloudAudioProvenance(Map<String, dynamic> row) {
  return _readCloudAudioString(row, const ['source', 'reference']).isNotEmpty &&
      _readCloudAudioString(row, const [
        'verified_at',
        'verifiedAt',
      ]).isNotEmpty;
}

String normalizeStorageObjectPath(
  String storagePath, {
  String bucketName = SupabaseConfig.quranAudioBucket,
}) {
  return storage_url.normalizeSupabaseStorageObjectPath(
    storagePath,
    bucketName: bucketName,
  );
}

String buildSupabaseStoragePublicUrl(
  String storagePath, {
  String supabaseUrl = SupabaseConfig.url,
  String bucketName = SupabaseConfig.quranAudioBucket,
}) {
  return storage_url.buildSupabaseStoragePublicUrl(
    storagePath,
    supabaseUrl: supabaseUrl,
    bucketName: bucketName,
  );
}

Map<int, String> resolveCloudQuranSurahUrls(
  List<Map<String, dynamic>> rows, {
  required String reciterId,
}) {
  final urls = <int, String>{};

  for (final row in rows) {
    final type = row['type']?.toString().trim().toLowerCase();
    if (type != 'quran_surah') {
      continue;
    }

    final reciter = row['reciter']?.toString().trim();
    if (reciter != reciterId) {
      continue;
    }

    final surahNumber = switch (row['surah_number']) {
      int value => value,
      num value => value.toInt(),
      String value => int.tryParse(value),
      _ => null,
    };
    if (surahNumber == null || surahNumber < 1 || surahNumber > 114) {
      continue;
    }

    if (!hasVerifiedCloudAudioProvenance(row)) {
      continue;
    }

    final url = resolvePlayableCloudAudioUrl(row);
    if (url == null) {
      continue;
    }

    urls.putIfAbsent(surahNumber, () => url);
  }

  return Map.unmodifiable(urls);
}

List<int> missingQuranSurahAudioSources(Map<int, String> surahUrls) {
  final missing = <int>[];

  for (var surahNumber = 1; surahNumber <= 114; surahNumber++) {
    if (!surahUrls.containsKey(surahNumber)) {
      missing.add(surahNumber);
    }
  }

  return List.unmodifiable(missing);
}

bool _isValidQuranSurahNumber(int surahNumber) =>
    surahNumber >= 1 && surahNumber <= 114;

bool _isSupportedOfflineReciter(String reciterId) =>
    OfflineReciters.reciters.containsKey(reciterId);

bool _isManagedDownloadedQuranAudioFileName(String fileName) {
  if (!fileName.endsWith('.mp3')) {
    return false;
  }

  for (final reciterId in OfflineReciters.reciters.keys) {
    if (!fileName.startsWith('${reciterId}_')) {
      continue;
    }

    final surahPart = fileName
        .replaceFirst('${reciterId}_', '')
        .replaceFirst('.mp3', '');
    final surahNumber = int.tryParse(surahPart);
    return surahNumber != null && _isValidQuranSurahNumber(surahNumber);
  }

  return false;
}

bool _isDownloadableQuranAudioUrl(String audioUrl) {
  return storage_url.isSupabaseStoragePublicUrl(
    audioUrl,
    bucketNames: const {SupabaseConfig.quranAudioBucket},
  );
}

Future<void> _deleteDownloadedQuranAudioFile(String filePath) async {
  try {
    final file = File(filePath);
    if (await file.exists()) {
      await file.delete();
    }
  } catch (_) {
    // Best-effort cleanup only; callers still treat the download as failed.
  }
}

Future<bool> validateDownloadedQuranAudioFile(String filePath) async {
  try {
    final file = File(filePath);
    if (!await file.exists()) {
      return false;
    }

    final fileLength = await file.length();
    if (fileLength <= 0) {
      await _deleteDownloadedQuranAudioFile(filePath);
      return false;
    }

    final header = await _readQuranAudioHeader(file, fileLength);
    if (!_hasMp3AudioSignature(header)) {
      await _deleteDownloadedQuranAudioFile(filePath);
      return false;
    }

    return true;
  } catch (_) {
    return false;
  }
}

Future<List<int>> _readQuranAudioHeader(File file, int fileLength) async {
  final headerLength = fileLength < _mp3HeaderProbeBytes
      ? fileLength
      : _mp3HeaderProbeBytes;
  final bytes = <int>[];

  await for (final chunk in file.openRead(0, headerLength)) {
    bytes.addAll(chunk);
  }

  return List<int>.unmodifiable(bytes);
}

bool _hasMp3AudioSignature(List<int> bytes) {
  if (bytes.length >= 3 &&
      bytes[0] == 0x49 &&
      bytes[1] == 0x44 &&
      bytes[2] == 0x33) {
    return true;
  }

  for (var index = 0; index < bytes.length - 1; index++) {
    if (bytes[index] == 0xFF && (bytes[index + 1] & 0xE0) == 0xE0) {
      return true;
    }
  }

  return false;
}

Map<String, Map<int, String>> resolveCloudQuranAudioCatalog(
  List<Map<String, dynamic>> rows,
) {
  final catalog = <String, Map<int, String>>{};

  for (final reciterId in OfflineReciters.reciters.keys) {
    final surahUrls = resolveCloudQuranSurahUrls(rows, reciterId: reciterId);
    if (surahUrls.isNotEmpty) {
      catalog[reciterId] = surahUrls;
    }
  }

  return Map.unmodifiable({
    for (final entry in catalog.entries)
      entry.key: Map<int, String>.unmodifiable(entry.value),
  });
}

class OfflineAudioService {
  static Future<Directory> get _audioDir async {
    final appDir = await getApplicationDocumentsDirectory();
    final audioDir = Directory('${appDir.path}/quran_audio');
    if (!await audioDir.exists()) {
      await audioDir.create(recursive: true);
    }
    return audioDir;
  }

  static Future<String> getAudioPath(int surahNumber, String reciterId) async {
    if (!_isValidQuranSurahNumber(surahNumber)) {
      throw ArgumentError('Unsupported Quran surah number');
    }
    if (!_isSupportedOfflineReciter(reciterId)) {
      throw ArgumentError('Unsupported offline reciter');
    }

    final dir = await _audioDir;
    final paddedSurah = surahNumber.toString().padLeft(3, '0');
    return '${dir.path}/${reciterId}_$paddedSurah.mp3';
  }

  static Future<bool> isAudioDownloaded(
    int surahNumber,
    String reciterId,
  ) async {
    if (!_isValidQuranSurahNumber(surahNumber) ||
        !_isSupportedOfflineReciter(reciterId)) {
      return false;
    }

    final path = await getAudioPath(surahNumber, reciterId);
    return validateDownloadedQuranAudioFile(path);
  }

  static Future<bool> downloadSurahAudio({
    required int surahNumber,
    required String reciterId,
    required String audioUrl,
    void Function(double progress)? onProgress,
    CancelToken? cancelToken,
  }) async {
    final normalizedAudioUrl = audioUrl.trim();
    if (!_isValidQuranSurahNumber(surahNumber) ||
        !_isSupportedOfflineReciter(reciterId) ||
        !_isDownloadableQuranAudioUrl(normalizedAudioUrl)) {
      return false;
    }

    String? savePath;
    try {
      final dio = Dio();
      savePath = await getAudioPath(surahNumber, reciterId);

      await dio.download(
        normalizedAudioUrl,
        savePath,
        cancelToken: cancelToken,
        onReceiveProgress: (received, total) {
          if (total <= 0) return;
          onProgress?.call(received / total);
        },
      );

      return validateDownloadedQuranAudioFile(savePath);
    } catch (_) {
      if (savePath != null) {
        await _deleteDownloadedQuranAudioFile(savePath);
      }
      return false;
    }
  }

  static Future<OfflineDownloadBatchResult> downloadAllSurahs({
    required String reciterId,
    required Map<int, String> surahUrls,
    SurahDownloadProgress? onProgress,
    void Function(int surahNumber, bool success)? onSurahComplete,
    bool Function()? shouldCancel,
  }) async {
    final sortedEntries = surahUrls.entries.toList()
      ..sort((left, right) => left.key.compareTo(right.key));
    final total = sortedEntries.length;
    var completed = 0;
    var succeeded = 0;
    final failedSurahs = <int>[];

    for (final entry in sortedEntries) {
      if (shouldCancel?.call() == true) {
        return OfflineDownloadBatchResult(
          totalSurahs: total,
          succeededSurahs: succeeded,
          failedSurahs: List<int>.unmodifiable(failedSurahs),
          wasCanceled: true,
        );
      }

      final surahNumber = entry.key;
      final url = entry.value;
      final cancelToken = CancelToken();
      final success = await downloadSurahAudio(
        surahNumber: surahNumber,
        reciterId: reciterId,
        audioUrl: url,
        cancelToken: cancelToken,
        onProgress: (singleProgress) {
          if (shouldCancel?.call() == true) {
            if (!cancelToken.isCancelled) {
              cancelToken.cancel('Offline Quran audio download canceled');
            }
            return;
          }

          final overall = (completed + singleProgress) / total;
          onProgress?.call(overall, surahNumber, total);
        },
      );

      if (cancelToken.isCancelled) {
        return OfflineDownloadBatchResult(
          totalSurahs: total,
          succeededSurahs: succeeded,
          failedSurahs: List<int>.unmodifiable(failedSurahs),
          wasCanceled: true,
        );
      }

      completed++;
      if (success) {
        succeeded++;
      } else {
        failedSurahs.add(surahNumber);
      }
      onSurahComplete?.call(surahNumber, success);
      onProgress?.call(completed / total, surahNumber, total);

      if (shouldCancel?.call() == true) {
        return OfflineDownloadBatchResult(
          totalSurahs: total,
          succeededSurahs: succeeded,
          failedSurahs: List<int>.unmodifiable(failedSurahs),
          wasCanceled: true,
        );
      }
    }

    return OfflineDownloadBatchResult(
      totalSurahs: total,
      succeededSurahs: succeeded,
      failedSurahs: List<int>.unmodifiable(failedSurahs),
      wasCanceled: false,
    );
  }

  static Future<List<int>> getDownloadedSurahs(String reciterId) async {
    if (!_isSupportedOfflineReciter(reciterId)) {
      return const [];
    }

    final downloaded = <int>[];
    final dir = await _audioDir;

    final files = await dir.list().toList();
    for (final entity in files) {
      if (entity is! File) continue;
      final fileName = p.basename(entity.path);
      if (!fileName.startsWith('${reciterId}_') || !fileName.endsWith('.mp3')) {
        continue;
      }
      if (!await validateDownloadedQuranAudioFile(entity.path)) {
        continue;
      }

      final surahPart = fileName
          .replaceFirst('${reciterId}_', '')
          .replaceFirst('.mp3', '');
      final surahNumber = int.tryParse(surahPart);
      if (surahNumber != null) {
        downloaded.add(surahNumber);
      }
    }

    downloaded.sort();
    return downloaded;
  }

  static Future<void> deleteReciterAudio(String reciterId) async {
    if (!_isSupportedOfflineReciter(reciterId)) {
      return;
    }

    final dir = await _audioDir;
    final files = await dir.list().toList();

    for (final entity in files) {
      if (entity is! File) continue;
      final fileName = p.basename(entity.path);
      if (!fileName.startsWith('${reciterId}_') || !fileName.endsWith('.mp3')) {
        continue;
      }
      await entity.delete();
    }
  }

  static Future<double> getTotalDownloadedSize() async {
    final dir = await _audioDir;
    var totalBytes = 0;

    final files = await dir.list().toList();
    for (final entity in files) {
      if (entity is! File) {
        continue;
      }

      final fileName = p.basename(entity.path);
      if (_isManagedDownloadedQuranAudioFileName(fileName) &&
          await validateDownloadedQuranAudioFile(entity.path)) {
        totalBytes += await entity.length();
      }
    }

    return totalBytes / (1024 * 1024);
  }

  static Future<Map<String, int>> getDownloadedCountByReciter() async {
    final result = <String, int>{};
    for (final reciterId in OfflineReciters.reciters.keys) {
      result[reciterId] = (await getDownloadedSurahs(reciterId)).length;
    }
    return result;
  }
}

class OfflineReciters {
  static const Map<String, Map<String, String>> reciters = {
    'alafasy': {'name': 'Mishary Rashid Alafasy'},
    'husary': {'name': 'Mahmoud Khalil Al-Husary'},
    'abdul_basit_murattal': {'name': 'Abdul Basit (Murattal)'},
    'abdul_basit_mujawwad': {'name': 'Abdul Basit (Mujawwad)'},
    'shuraim': {'name': 'Saoud Al-Shuraim'},
    'sudais': {'name': 'Abdul Rahman Al-Sudais'},
  };

  static Future<String?> getSurahUrl(String reciterId, int surahNumber) async {
    if (!reciters.containsKey(reciterId)) return null;

    try {
      final row = await Supabase.instance.client
          .from('audio_files')
          .select(
            'type, reciter, surah_number, url, storage_path, source, verified_at',
          )
          .eq('type', 'quran_surah')
          .eq('reciter', reciterId)
          .eq('surah_number', surahNumber)
          .maybeSingle();
      if (row == null) {
        return null;
      }

      final audioRow = Map<String, dynamic>.from(row);
      if (!hasVerifiedCloudAudioProvenance(audioRow)) {
        return null;
      }

      return resolvePlayableCloudAudioUrl(audioRow);
    } catch (_) {
      return null;
    }
  }

  static Future<Map<int, String>> getAllSurahUrls(String reciterId) async {
    if (!reciters.containsKey(reciterId)) {
      return const {};
    }

    try {
      final catalog = await getQuranAudioCatalog();
      return catalog[reciterId] ?? const {};
    } catch (_) {
      return const {};
    }
  }

  static Future<Map<String, Map<int, String>>> getQuranAudioCatalog() async {
    try {
      final rows = await Supabase.instance.client
          .from('audio_files')
          .select(
            'type, reciter, surah_number, url, storage_path, source, verified_at',
          )
          .eq('type', 'quran_surah')
          .order('reciter', ascending: true)
          .order('surah_number', ascending: true);

      return resolveCloudQuranAudioCatalog(
        List<Map<String, dynamic>>.from(rows),
      );
    } catch (_) {
      return const {};
    }
  }
}
