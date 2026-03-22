import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

typedef SurahDownloadProgress =
    void Function(double progress, int surahNumber, int totalSurahs);

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

  static Future<bool> isAudioDownloaded(int surahNumber, String reciterId) async {
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
    'alafasy': {
      'name': 'Mishary Rashid Alafasy',
      'baseUrl': 'https://server8.mp3quran.net/afs',
    },
    'husary': {
      'name': 'Mahmoud Khalil Al-Husary',
      'baseUrl': 'https://server8.mp3quran.net/husr',
    },
    'abdul_basit_murattal': {
      'name': 'Abdul Basit (Murattal)',
      'baseUrl': 'https://server8.mp3quran.net/basit_murattal',
    },
    'abdul_basit_mujawwad': {
      'name': 'Abdul Basit (Mujawwad)',
      'baseUrl': 'https://server8.mp3quran.net/basit',
    },
    'shuraim': {
      'name': 'Saoud Al-Shuraim',
      'baseUrl': 'https://server8.mp3quran.net/shuraim',
    },
    'sudais': {
      'name': 'Abdul Rahman Al-Sudais',
      'baseUrl': 'https://server8.mp3quran.net/sds',
    },
  };

  static String getSurahUrl(String reciterId, int surahNumber) {
    final reciter = reciters[reciterId];
    if (reciter == null) return '';

    final paddedSurah = surahNumber.toString().padLeft(3, '0');
    return '${reciter['baseUrl']}/$paddedSurah.mp3';
  }

  static Map<int, String> getAllSurahUrls(String reciterId) {
    final urls = <int, String>{};
    for (var i = 1; i <= 114; i++) {
      urls[i] = getSurahUrl(reciterId, i);
    }
    return urls;
  }
}
