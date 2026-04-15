import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/network/supabase_storage_url.dart';
import 'package:sirat_i_nur/core/services/audio_player_service.dart';

const Set<String> expectedSukunSoundTypes = {
  'rain',
  'forest',
  'night',
  'ocean',
};

bool isRemoteAudioSource(String source) {
  final uri = Uri.tryParse(source.trim());
  if (uri == null) {
    return false;
  }

  return uri.isScheme('http') || uri.isScheme('https');
}

bool isPlayableRemoteAudioSource(String source) {
  return isRemoteAudioSource(source) && isSupabaseStoragePublicUrl(source);
}

String? resolveSukunSoundType(String candidate) {
  final normalized = candidate.trim().toLowerCase();
  if (normalized.isEmpty) {
    return null;
  }

  for (final soundType in expectedSukunSoundTypes) {
    if (normalized == soundType || normalized.contains(soundType)) {
      return soundType;
    }
  }

  return null;
}

abstract class SovereignAudioEngine {
  Future<bool> playAsset(String assetPath);
  Future<bool> playUrl(String url);
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
  Future<bool> playUrl(String url) => _player.playUrl(url);

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
    final normalized = resolveSukunSoundType(natureType);
    if (normalized == null) {
      return null;
    }

    final assetPath = _sukunAssets[normalized];
    if (assetPath == null || assetPath.trim().isEmpty) {
      return null;
    }
    return assetPath;
  }

  String? resolveSukunSource(
    String natureType, {
    Map<String, String> cloudSources = const {},
  }) {
    final normalized = resolveSukunSoundType(natureType);
    if (normalized == null) {
      return null;
    }

    final cloudSource = cloudSources[normalized]?.trim();
    if (cloudSource != null &&
        cloudSource.isNotEmpty &&
        isPlayableRemoteAudioSource(cloudSource)) {
      return cloudSource;
    }

    return resolveSukunAssetPath(normalized);
  }

  Future<bool> playSource(String source) async {
    final normalized = source.trim();
    if (normalized.isEmpty) {
      _isPlaying = false;
      return false;
    }

    final played = isRemoteAudioSource(normalized)
        ? await _playRemoteSource(normalized)
        : await _engine.playAsset(normalized);
    _isPlaying = played;
    return played;
  }

  Future<bool> _playRemoteSource(String source) async {
    if (!isPlayableRemoteAudioSource(source)) {
      return false;
    }

    return _engine.playUrl(source);
  }

  Future<bool> playQuran(String assetPath) async {
    return playSource(assetPath);
  }

  Future<bool> playSukun(
    String natureType, {
    Map<String, String> cloudSources = const {},
  }) async {
    final source = resolveSukunSource(natureType, cloudSources: cloudSources);
    if (source == null) {
      _isPlaying = false;
      return false;
    }

    return playSource(source);
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

final audioSovereigntyServiceProvider = Provider<AudioSovereigntyService>((
  ref,
) {
  final service = AudioSovereigntyService();
  ref.onDispose(service.dispose);
  return service;
});
