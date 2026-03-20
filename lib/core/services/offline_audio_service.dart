import 'dart:io';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

/// Offline Quran Audio Service
/// Manages download and playback of Quran audio for offline use
class OfflineAudioService {
  /// Get the offline audio directory
  static Future<Directory> get _audioDir async {
    final appDir = await getApplicationDocumentsDirectory();
    final audioDir = Directory('${appDir.path}/quran_audio');
    if (!await audioDir.exists()) {
      await audioDir.create(recursive: true);
    }
    return audioDir;
  }
  
  /// Get audio file path for a surah
  static Future<String> getAudioPath(int surahNumber, String reciterId) async {
    final dir = await _audioDir;
    final paddedSurah = surahNumber.toString().padLeft(3, '0');
    return '${dir.path}/${reciterId}_$paddedSurah.mp3';
  }
  
  /// Check if audio is downloaded
  static Future<bool> isAudioDownloaded(int surahNumber, String reciterId) async {
    final path = await getAudioPath(surahNumber, reciterId);
    return File(path).exists();
  }
  
  /// Download a single surah audio
  static Future<bool> downloadSurahAudio({
    required int surahNumber,
    required String reciterId,
    required String audioUrl,
    Function(double, int, int)? onProgress,
  }) async {
    try {
      final dio = Dio();
      final savePath = await getAudioPath(surahNumber, reciterId);
      
      await dio.download(
        audioUrl,
        savePath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            double progress = (received / total) * 100;
            onProgress?.call(progress, surahNumber, -1);
          }
        },
      );
      
      return true;
    } catch (e) {
      return false;
    }
  }
  
  /// Download all 114 surahs for a reciter
  static Future<void> downloadAllSurahs({
    required String reciterId,
    required Map<String, String> surahUrls,
    Function(double, int, int)? onProgress,
    Function(int, bool)? onSurahComplete,
  }) async {
    int completed = 0;
    int total = surahUrls.length;
    
    for (final entry in surahUrls.entries) {
      final surahNumber = int.parse(entry.key);
      final url = entry.value;
      
      final success = await downloadSurahAudio(
        surahNumber: surahNumber,
        reciterId: reciterId,
        audioUrl: url,
        onProgress: (progress, _, _) {
          double overallProgress = ((completed * 100) + progress) / total;
          onProgress?.call(overallProgress, surahNumber, total);
        },
      );
      
      completed++;
      onSurahComplete?.call(surahNumber, success);
    }
  }
  
  /// Get list of downloaded surahs
  static Future<List<int>> getDownloadedSurahs(String reciterId) async {
    final List<int> downloaded = [];
    final dir = await _audioDir;
    
    final files = await dir.list().toList();
    for (final file in files) {
      if (file is File && file.path.contains(reciterId)) {
        String filename = file.path.split('/').last;
        filename = filename.replaceAll('.mp3', '');
        filename = filename.replaceAll('${reciterId}_', '');
        try {
          int surahNum = int.parse(filename);
          downloaded.add(surahNum);
        } catch (e) {
          // Skip invalid filenames
        }
      }
    }
    
    return downloaded;
  }
  
  /// Delete all downloaded audio for a reciter
  static Future<void> deleteReciterAudio(String reciterId) async {
    final dir = await _audioDir;
    final files = await dir.list().toList();
    
    for (final file in files) {
      if (file is File && file.path.contains(reciterId)) {
        await file.delete();
      }
    }
  }
  
  /// Get total downloaded size in MB
  static Future<double> getTotalDownloadedSize() async {
    final dir = await _audioDir;
    int totalBytes = 0;
    
    final files = await dir.list().toList();
    for (final file in files) {
      if (file is File) {
        totalBytes += await file.length();
      }
    }
    
    return totalBytes / (1024 * 1024);
  }
}

/// Available reciters for offline download
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
  };
  
  /// Get URL for a surah
  static String getSurahUrl(String reciterId, int surahNumber) {
    final reciter = reciters[reciterId];
    if (reciter == null) return '';
    
    final paddedSurah = surahNumber.toString().padLeft(3, '0');
    return '${reciter['baseUrl']}/$paddedSurah.mp3';
  }
  
  /// Get all surah URLs for a reciter
  static Map<String, String> getAllSurahUrls(String reciterId) {
    final Map<String, String> urls = {};
    for (int i = 1; i <= 114; i++) {
      urls[i.toString()] = getSurahUrl(reciterId, i);
    }
    return urls;
  }
}
