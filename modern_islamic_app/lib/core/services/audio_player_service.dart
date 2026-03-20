import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart' as just_audio;

// High-quality audio sources - using multiple reliable sources
class AudioSources {
  // Quran audio from multiple reciters
  static const Map<String, String> quranReciters = {
    'alafasy': 'Mishary Rashid Alafasy',
    'husary': 'Mahmoud Khalil Al-Husary',
    'shuraim': ' Saud Al-Shuraim',
    'basit': 'Abdul Basit',
  };
  
  // Base URLs for reliable sources
  static const String quranAudioBaseUrl = 'https://download.quranicaudio.com/quran';
  
  // Get full URL for a reciter and surah
  static String getQuranAudioUrl(String reciter, int surahNumber) {
    final paddedSurah = surahNumber.toString().padLeft(3, '0');
    return '$quranAudioBaseUrl/$reciter/$paddedSurah.mp3';
  }
  
  // Asma-ul-Husna audio URLs - using official source
  static String getAsmaAudioUrl(int nameId) {
    // Using the official Asmaul Husna API
    return 'https://www.islamicfiles.org/audio/asmaAllah/$nameId.mp3';
  }
}

// High-quality Mishary Rashid Alafasy audio provider
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

  /// Check if player is ready
  bool get isReady => _isInitialized && _player.processingState != just_audio.ProcessingState.completed;
  
  /// Get current player state
  just_audio.ProcessingState get state => _player.processingState;
  
  /// Check if currently playing
  bool get isPlaying => _player.playing;

  /// Plays audio from a URI with better error handling
  Future<bool> playAudio(String url, {String? title}) async {
    try {
      if (!isReady) {
        debugPrint('Audio player not ready');
        return false;
      }
      
      // Stop current playback
      await _player.stop();
      
      // Set the audio source with error handling
      await _player.setAudioSource(
        just_audio.AudioSource.uri(Uri.parse(url)),
        preload: true,
      );
      
      // Start playing
      await _player.play();
      
      debugPrint('Playing: $url');
      return true;
    } catch (e) {
      debugPrint('Audio Player Error: $e');
      // Try alternative URLs if first fails
      return false;
    }
  }

  /// Plays high-quality Arabic audio from a URI
  Future<bool> playArabicAudio(String url) async {
    return await playAudio(url);
  }

  /// Play Quran surah with reciter selection
  Future<bool> playQuranSurah(int surahNumber, {String reciter = 'alafasy'}) async {
    final url = AudioSources.getQuranAudioUrl(reciter, surahNumber);
    return await playAudio(url, title: 'Surah $surahNumber');
  }

  /// Specialized method for Asma-ul-Husna
  Future<bool> playAsmaName(int id) async {
    // Try multiple audio sources
    final urls = [
      AudioSources.getAsmaAudioUrl(id),
      'https://server11.mp3quran.net/asma/$id.mp3',
      'https://www.mp3quran.net/asma/$id.mp3',
    ];
    
    for (final url in urls) {
      debugPrint('Trying audio URL: $url');
      if (await playAudio(url)) {
        return true;
      }
    }
    
    debugPrint('All audio sources failed for Asma $id');
    return false;
  }

  /// Pause playback
  Future<void> pause() async {
    if (isReady) {
      await _player.pause();
    }
  }

  /// Resume playback
  Future<void> resume() async {
    if (isReady) {
      await _player.play();
    }
  }

  /// Stop playback
  Future<void> stop() async {
    if (isReady) {
      await _player.stop();
    }
  }

  /// Seek to position
  Future<void> seek(Duration position) async {
    if (isReady) {
      await _player.seek(position);
    }
  }

  /// Set volume (0.0 to 1.0)
  Future<void> setVolume(double volume) async {
    if (isReady) {
      await _player.setVolume(volume.clamp(0.0, 1.0));
    }
  }

  /// Dispose resources
  void dispose() {
    _player.dispose();
    _isInitialized = false;
  }
}
