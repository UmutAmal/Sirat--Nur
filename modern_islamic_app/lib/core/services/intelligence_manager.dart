import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import 'package:flutter_gemma/flutter_gemma.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final intelligenceProvider = Provider((ref) => IntelligenceManager());

class IntelligenceManager {
  bool _isInitialized = false;
  bool _isModelDownloaded = false;
  double _downloadProgress = 0.0;
  InferenceModel? _model;
  
  bool get isReady => _isInitialized && _isModelDownloaded && _model != null;
  double get downloadProgress => _downloadProgress;

  Future<void> init() async {
    if (_isInitialized) return;
    
    final directory = await getApplicationSupportDirectory();
    final modelPath = '${directory.path}/model.bin';
    
    if (await File(modelPath).exists()) {
      await _initGemma(modelPath);
      _isModelDownloaded = _model != null;
    }
    
    _isInitialized = true;
  }

  Future<void> _initGemma(String path) async {
    try {
      _model = await FlutterGemmaPlugin.instance.createModel(
        modelType: ModelType.gemmaIt,
        maxTokens: 1024,
      );
    } catch (e) {
      debugPrint('FlutterGemma Init Error: $e');
    }
  }

  Future<void> downloadModel({void Function(double)? onProgress}) async {
    final directory = await getApplicationSupportDirectory();
    final modelPath = '${directory.path}/model.bin';
    
    // Example URL - in a real app, this would be a hosted Gemma 2B bin file
    // For now, we'll implement the downloader logic
    const modelUrl = 'https://huggingface.co/google/gemma-2b-it/resolve/main/gemma-2b-it-gpu-int4.bin';
    
    final dio = Dio();
    try {
      await dio.download(
        modelUrl,
        modelPath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            _downloadProgress = received / total;
            onProgress?.call(_downloadProgress);
          }
        },
      );
      await _initGemma(modelPath);
      _isModelDownloaded = _model != null;
    } catch (e) {
      debugPrint('Model Download Error: $e');
      rethrow;
    }
  }

  Future<String> getResponse(String prompt, {String? context}) async {
    if (!isReady) return "Intelligence Engine is not ready. Please download the neural core.";
    
    final finalPrompt = context != null 
        ? "Context: $context\n\nQuestion: $prompt\n\nAnswer as a wise Islamic assistant using the provided context." 
        : prompt;
        
    if (_model == null) return "Model not initialized.";
    
    final session = await _model!.createSession(
      temperature: 0.7,
      topK: 40,
      randomSeed: 42,
    );
    
    await session.addQueryChunk(Message(text: finalPrompt));
    final response = await session.getResponse();
    await session.close();
    return response;
  }
}
