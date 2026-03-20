import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

final downloadManagerProvider = Provider((ref) {
  return DownloadManager();
});

// Tracks download progress for the UI (0.0 to 1.0)
final downloadProgressProvider = StateProvider<double>((ref) => 0.0);
final isDownloadingProvider = StateProvider<bool>((ref) => false);

class DownloadManager {
  final Dio _dio = Dio();

  /// Downloads a massive file (like an offline Surah pack) directly to the application directory.
  Future<void> downloadOfflinePack(
      String url, 
      String fileName, 
      {required Function(double) onProgress, required Function(String) onSuccess, required Function(String) onError}) async {
    
    try {
      final dir = await getApplicationDocumentsDirectory();
      final savePath = '${dir.path}/$fileName';

      await _dio.download(
        url,
        savePath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            double progress = received / total;
            onProgress(progress);
          }
        },
      );

      onSuccess(savePath);
    } catch (e) {
      onError(e.toString());
    }
  }

  /// Checks if the premium offline audio pack exists on the device
  Future<bool> hasOfflinePack(String fileName) async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$fileName');
    return await file.exists();
  }

  /// Deletes an offline pack
  Future<void> deleteOfflinePack(String fileName) async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$fileName');
    if (await file.exists()) {
      await file.delete();
    }
  }

  /// Gets the size of an offline pack in MB
  Future<double> getFileSize(String fileName) async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$fileName');
    if (await file.exists()) {
      final bytes = await file.length();
      return bytes / (1024 * 1024);
    }
    return 0;
  }
}
