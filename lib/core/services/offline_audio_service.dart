import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

typedef SurahDownloadProgress =
    void Function(double progress, int surahNumber, int totalSurahs);

String? resolvePlayableCloudAudioUrl(Map<String, dynamic> row) {
  for (final key in const ['url']) {
    final value = row[key]?.toString().trim();
    if (value != null && value.isNotEmpty) {
      return value;
    }
  }

  return null;
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
    final dir = await _audioDir;
    final paddedSurah = surahNumber.toString().padLeft(3, '0');
    return '${dir.path}/${reciterId}_$paddedSurah.mp3';
  }

  static Future<bool> isAudioDownloaded(
    int surahNumber,
    String reciterId,
  ) async {
    final path = await getAudioPath(surahNumber, reciterId);
    return File(path).exists();
  }

  static Future<bool> downloadSurahAudio({
    required int surahNumber,
    required String reciterId,
    required String audioUrl,
    void Function(double progress)? onProgress,
    CancelToken? cancelToken,
  }) async {
    try {
      final dio = Dio();
      final savePath = await getAudioPath(surahNumber, reciterId);

      await dio.download(
        audioUrl,
        savePath,
        cancelToken: cancelToken,
        onReceiveProgress: (received, total) {
          if (total <= 0) return;
          onProgress?.call(received / total);
        },
      );

      return true;
    } catch (_) {
      return false;
    }
  }

  static Future<void> downloadAllSurahs({
    required String reciterId,
    required Map<int, String> surahUrls,
    SurahDownloadProgress? onProgress,
    void Function(int surahNumber, bool success)? onSurahComplete,
    bool Function()? shouldCancel,
  }) async {
    final sortedSurahs = surahUrls.keys.toList()..sort();
    final total = sortedSurahs.length;
    var completed = 0;

    for (final surahNumber in sortedSurahs) {
      if (shouldCancel?.call() == true) return;

      final url = surahUrls[surahNumber]!;
      final success = await downloadSurahAudio(
        surahNumber: surahNumber,
        reciterId: reciterId,
        audioUrl: url,
        onProgress: (singleProgress) {
          final overall = (completed + singleProgress) / total;
          onProgress?.call(overall, surahNumber, total);
        },
      );

      completed++;
      onSurahComplete?.call(surahNumber, success);
      onProgress?.call(completed / total, surahNumber, total);
    }
  }

  static Future<List<int>> getDownloadedSurahs(String reciterId) async {
    final downloaded = <int>[];
    final dir = await _audioDir;

    final files = await dir.list().toList();
    for (final entity in files) {
      if (entity is! File) continue;
      final fileName = p.basename(entity.path);
      if (!fileName.startsWith('${reciterId}_') || !fileName.endsWith('.mp3')) {
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
      if (entity is File) {
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
          .select('type, reciter, surah_number, url')
          .eq('type', 'quran_surah')
          .eq('reciter', reciterId)
          .eq('surah_number', surahNumber)
          .maybeSingle();
      if (row == null) {
        return null;
      }

      return resolvePlayableCloudAudioUrl(Map<String, dynamic>.from(row));
    } catch (_) {
      return null;
    }
  }

  static Future<Map<int, String>> getAllSurahUrls(String reciterId) async {
    if (!reciters.containsKey(reciterId)) {
      return const {};
    }

    try {
      final rows = await Supabase.instance.client
          .from('audio_files')
          .select('type, reciter, surah_number, url')
          .eq('type', 'quran_surah')
          .eq('reciter', reciterId)
          .order('surah_number', ascending: true);

      return resolveCloudQuranSurahUrls(
        List<Map<String, dynamic>>.from(rows),
        reciterId: reciterId,
      );
    } catch (_) {
      return const {};
    }
  }
}
