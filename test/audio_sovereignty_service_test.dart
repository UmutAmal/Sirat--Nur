import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/services/audio_sovereignty_service.dart';

class FakeSovereignAudioEngine implements SovereignAudioEngine {
  FakeSovereignAudioEngine({this.playResult = true});

  final bool playResult;
  String? lastAssetPath;
  String? lastUrl;
  double? lastVolume;
  int stopCalls = 0;
  bool disposed = false;

  @override
  Future<bool> playAsset(String assetPath) async {
    lastAssetPath = assetPath;
    return playResult;
  }

  @override
  Future<bool> playUrl(String url) async {
    lastUrl = url;
    return playResult;
  }

  @override
  Future<void> setVolume(double volume) async {
    lastVolume = volume;
  }

  @override
  Future<void> stop() async {
    stopCalls++;
  }

  @override
  void dispose() {
    disposed = true;
  }
}

void main() {
  group('AudioSovereigntyService', () {
    test('plays quran assets through the injected engine', () async {
      final engine = FakeSovereignAudioEngine();
      final service = AudioSovereigntyService(engine: engine);

      final played = await service.playQuran('assets/audio/ui/success.wav');

      expect(played, isTrue);
      expect(service.isPlaying, isTrue);
      expect(engine.lastAssetPath, 'assets/audio/ui/success.wav');
    });

    test(
      'returns false for missing sukun assets instead of faking success',
      () async {
        final engine = FakeSovereignAudioEngine();
        final service = AudioSovereigntyService(engine: engine);

        final played = await service.playSukun('rain');

        expect(played, isFalse);
        expect(service.isPlaying, isFalse);
        expect(engine.lastAssetPath, isNull);
      },
    );

    test('plays mapped sukun assets when provided explicitly', () async {
      final engine = FakeSovereignAudioEngine();
      final service = AudioSovereigntyService(
        engine: engine,
        sukunAssets: const {'rain': 'assets/audio/ui/notification.wav'},
      );

      final played = await service.playSukun('rain');

      expect(played, isTrue);
      expect(service.isPlaying, isTrue);
      expect(engine.lastAssetPath, 'assets/audio/ui/notification.wav');
    });

    test('normalizes sukun asset lookup keys before resolving paths', () async {
      final service = AudioSovereigntyService(
        engine: FakeSovereignAudioEngine(),
        sukunAssets: const {'rain': 'assets/audio/ui/notification.wav'},
      );

      expect(
        service.resolveSukunAssetPath(' Rain '),
        'assets/audio/ui/notification.wav',
      );
      expect(service.resolveSukunAssetPath('forest'), isNull);
    });

    test('plays cloud sukun urls through the injected engine', () async {
      final engine = FakeSovereignAudioEngine();
      final service = AudioSovereigntyService(engine: engine);

      final played = await service.playSukun(
        'rain',
        cloudSources: const {'rain': 'https://cdn.example.com/rain.mp3'},
      );

      expect(played, isTrue);
      expect(service.isPlaying, isTrue);
      expect(engine.lastUrl, 'https://cdn.example.com/rain.mp3');
      expect(engine.lastAssetPath, isNull);
    });

    test('resolves cloud sukun source before local assets', () {
      final service = AudioSovereigntyService(
        engine: FakeSovereignAudioEngine(),
        sukunAssets: const {'rain': 'assets/audio/ui/notification.wav'},
      );

      expect(
        service.resolveSukunSource(
          'rain',
          cloudSources: const {'rain': 'https://cdn.example.com/rain.mp3'},
        ),
        'https://cdn.example.com/rain.mp3',
      );
    });

    test('setVolumes clamps values and forwards the mixed volume', () async {
      final engine = FakeSovereignAudioEngine();
      final service = AudioSovereigntyService(engine: engine);

      service.setVolumes(quran: 1.5, nature: -1);
      await Future<void>.delayed(Duration.zero);

      expect(service.quranVolume, 1.0);
      expect(service.natureVolume, 0.0);
      expect(engine.lastVolume, 1.0);
    });

    test('stopAll resets playback state and stops the engine', () async {
      final engine = FakeSovereignAudioEngine();
      final service = AudioSovereigntyService(
        engine: engine,
        sukunAssets: const {'rain': 'assets/audio/ui/notification.wav'},
      );

      await service.playSukun('rain');
      await service.stopAll();

      expect(service.isPlaying, isFalse);
      expect(engine.stopCalls, 1);
    });
  });
}
