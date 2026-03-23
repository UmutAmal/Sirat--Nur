import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart' as just_audio;

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

  // Quran reciters info (for downloadable content)
  static const Map<String, String> quranReciters = {
    'mishary_rashid_alafasy': 'Mishary Rashid Alafasy',
    'mahmoud_khalil_al-husary': 'Mahmoud Khalil Al-Husary',
    'saad_al_ghamdi': 'Saad Al-Ghamdi',
    'abdul_basit': 'Abdul Basit Abdul Samad',
    'abu_bakr_al_shatri': 'Abu Bakr Al-Shatri',
    'hani_ar_rifai': 'Hani Ar-Rifai',
    'maher_al_muaiqly': 'Maher Al-Muaiqly',
    'ahmed_al_ajmi': 'Ahmed Al-Ajmi',
  };

  /// Get local Quran audio path (for downloaded surahs)
  static String getQuranLocalPath(String reciter, int surahNumber) {
    final padded = surahNumber.toString().padLeft(3, '0');
    return 'assets/audio/quran/${reciter}_$padded.mp3';
  }
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

  /// Play from local asset
  Future<bool> playAsset(String assetPath) async {
    try {
      await _player.stop();
      await _player.setAsset(assetPath);
      await _player.play();
      debugPrint('Playing local asset: $assetPath');
      return true;
    } catch (e) {
      debugPrint('Asset playback error: $e');
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

  /// Play Quran surah from local download
  Future<bool> playQuranSurah(
    int surahNumber, {
    String reciter = 'mishary_rashid_alafasy',
  }) async {
    final path = LocalAudio.getQuranLocalPath(reciter, surahNumber);
    return await playAsset(path);
  }

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
