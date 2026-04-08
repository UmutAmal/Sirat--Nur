import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/services/audio_player_service.dart';

const Set<String> expectedSukunSoundTypes = {
  'rain',
  'forest',
  'night',
  'ocean',
};

abstract class SovereignAudioEngine {
  Future<bool> playAsset(String assetPath);
  Future<void> stop();
  Future<void> setVolume(double volume);
  void dispose();
}

class LocalAudioEngine implements SovereignAudioEngine {
  LocalAudioEngine([AudioPlayerService? player])
    : _player = player ?? AudioPlayerService();

  final AudioPlayerService _player;

  @override
  Future<bool> playAsset(String assetPath) => _player.playAsset(assetPath);

  @override
  Future<void> stop() => _player.stop();

  @override
  Future<void> setVolume(double volume) => _player.setVolume(volume);

  @override
  void dispose() {
    _player.dispose();
  }
}

class AudioSovereigntyService {
  AudioSovereigntyService({
    SovereignAudioEngine? engine,
    Map<String, String>? sukunAssets,
  }) : _engine = engine ?? LocalAudioEngine(),
       _sukunAssets = Map.unmodifiable(sukunAssets ?? const {});

  final SovereignAudioEngine _engine;
  final Map<String, String> _sukunAssets;

  bool _isPlaying = false;
  double _volumeQuran = 0.8;
  double _volumeNature = 0.4;

  bool get isPlaying => _isPlaying;
  double get quranVolume => _volumeQuran;
  double get natureVolume => _volumeNature;
  Set<String> get configuredSukunTypes => _sukunAssets.keys.toSet();

  String? resolveSukunAssetPath(String natureType) {
    final normalized = natureType.trim().toLowerCase();
    final assetPath = _sukunAssets[normalized];
    if (assetPath == null || assetPath.trim().isEmpty) {
      return null;
    }
    return assetPath;
  }

  Future<bool> playQuran(String assetPath) async {
    final normalized = assetPath.trim();
    if (normalized.isEmpty) {
      _isPlaying = false;
      return false;
    }

    final played = await _engine.playAsset(normalized);
    _isPlaying = played;
    return played;
  }

  Future<bool> playSukun(String natureType) async {
    final assetPath = resolveSukunAssetPath(natureType);
    if (assetPath == null) {
      _isPlaying = false;
      return false;
    }

    final played = await _engine.playAsset(assetPath);
    _isPlaying = played;
    return played;
  }

  void setVolumes({double? quran, double? nature}) {
    if (quran != null) {
      _volumeQuran = quran.clamp(0.0, 1.0);
    }
    if (nature != null) {
      _volumeNature = nature.clamp(0.0, 1.0);
    }

    final mixedVolume = _volumeQuran > _volumeNature
        ? _volumeQuran
        : _volumeNature;
    unawaited(_engine.setVolume(mixedVolume));
  }

  Future<void> stopAll() async {
    await _engine.stop();
    _isPlaying = false;
  }

  void dispose() {
    _engine.dispose();
    _isPlaying = false;
  }
}

final audioSovereigntyServiceProvider = Provider<AudioSovereigntyService>((ref) {
  final service = AudioSovereigntyService();
  ref.onDispose(service.dispose);
  return service;
});
