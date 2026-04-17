import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart' as just_audio;
import 'package:sirat_i_nur/core/network/supabase_storage_url.dart';

/// Local audio asset paths — all sounds stored in assets/audio/
class LocalAudio {
  // Adhan (call to prayer) — local assets
  static const String adhanMakkah = 'assets/audio/adhan/adhan_makkah.wav';
  static const String adhanMadinah = 'assets/audio/adhan/adhan_madinah.wav';
  static const String adhanFajr = 'assets/audio/adhan/adhan_fajr.wav';

  // UI sounds — local assets
  static const String tasbihClick = 'assets/audio/ui/tasbih_click.wav';
  static const String tasbihComplete = 'assets/audio/ui/tasbih_complete.wav';
  static const String notificationTone = 'assets/audio/ui/notification.wav';
  static const String prayerReminder = 'assets/audio/ui/prayer_reminder.wav';
  static const String pageFlip = 'assets/audio/ui/page_flip.wav';
  static const String success = 'assets/audio/ui/success.wav';
}

final audioPlayerServiceProvider = Provider((ref) {
  final service = AudioPlayerService();
  ref.onDispose(() => service.dispose());
  return service;
});

class AudioPlayerService {
  final just_audio.AudioPlayer _player = just_audio.AudioPlayer();
  bool _isInitialized = false;

  AudioPlayerService() {
    _player.setLoopMode(just_audio.LoopMode.off);
    _isInitialized = true;
  }

  bool get isReady => _isInitialized;
  bool get isPlaying => _player.playing;
  Stream<Duration> get positionStream => _player.positionStream;
  Stream<Duration?> get durationStream => _player.durationStream;

  /// Play from remote URL
  Future<bool> playUrl(String url) async {
    final normalized = url.trim();
    if (!isSupabaseStoragePublicUrl(normalized)) {
      debugPrint('Remote audio playback blocked: non-storage URL');
      return false;
    }

    try {
      await _player.stop();
      await _player.setUrl(normalized);
      await _player.play();
      debugPrint('Remote audio playback started');
      return true;
    } catch (_) {
      debugPrint('Remote audio playback failed');
      return false;
    }
  }

  /// Play from local asset
  Future<bool> playAsset(String assetPath) async {
    try {
      await _player.stop();
      await _player.setAsset(assetPath);
      await _player.play();
      debugPrint('Local audio playback started');
      return true;
    } catch (_) {
      debugPrint('Local audio playback failed');
      return false;
    }
  }

  /// Play adhan from local asset
  Future<bool> playAdhan({String style = 'makkah'}) async {
    switch (style) {
      case 'madinah':
        return await playAsset(LocalAudio.adhanMadinah);
      case 'fajr':
        return await playAsset(LocalAudio.adhanFajr);
      default:
        return await playAsset(LocalAudio.adhanMakkah);
    }
  }

  /// Play tasbih click sound
  Future<bool> playTasbihClick() async =>
      await playAsset(LocalAudio.tasbihClick);

  /// Play tasbih completion sound
  Future<bool> playTasbihComplete() async =>
      await playAsset(LocalAudio.tasbihComplete);

  /// Play notification tone
  Future<bool> playNotification() async =>
      await playAsset(LocalAudio.notificationTone);

  /// Play prayer reminder
  Future<bool> playPrayerReminder() async =>
      await playAsset(LocalAudio.prayerReminder);

  /// Play page flip sound (for Quran reading)
  Future<bool> playPageFlip() async => await playAsset(LocalAudio.pageFlip);

  /// Play success sound
  Future<bool> playSuccess() async => await playAsset(LocalAudio.success);

  Future<void> pause() async => await _player.pause();
  Future<void> resume() async => await _player.play();
  Future<void> stop() async => await _player.stop();
  Future<void> seek(Duration position) async => await _player.seek(position);
  Future<void> setVolume(double volume) async =>
      await _player.setVolume(volume.clamp(0.0, 1.0));
  Future<void> setSpeed(double speed) async =>
      await _player.setSpeed(speed.clamp(0.5, 2.0));

  void dispose() {
    _player.dispose();
    _isInitialized = false;
  }
}
