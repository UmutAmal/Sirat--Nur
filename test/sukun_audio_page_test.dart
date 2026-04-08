import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/providers/supabase_providers.dart';
import 'package:sirat_i_nur/core/services/audio_sovereignty_service.dart';
import 'package:sirat_i_nur/features/library/sukun_audio_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

class NoopSovereignAudioEngine implements SovereignAudioEngine {
  @override
  void dispose() {}

  @override
  Future<bool> playAsset(String assetPath) async => false;

  @override
  Future<bool> playUrl(String url) async => false;

  @override
  Future<void> setVolume(double volume) async {}

  @override
  Future<void> stop() async {}
}

class FakePageAudioService extends AudioSovereigntyService {
  FakePageAudioService(this.playResult, {super.sukunAssets})
    : super(engine: NoopSovereignAudioEngine());

  final bool playResult;
  String? requestedType;
  Map<String, String> requestedCloudSources = const {};

  @override
  Future<bool> playSukun(
    String natureType, {
    Map<String, String> cloudSources = const {},
  }) async {
    requestedType = natureType;
    requestedCloudSources = cloudSources;
    return playResult;
  }
}

void main() {
  testWidgets('shows an honest unavailable state when no sukun mappings exist', (
    tester,
  ) async {
    await tester.binding.setSurfaceSize(const Size(800, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));

    final service = FakePageAudioService(false);

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          audioSovereigntyServiceProvider.overrideWithValue(service),
          sukunAudioSourcesProvider.overrideWith((ref) async => const {}),
        ],
        child: MaterialApp(
          locale: const Locale('en'),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: const SukunAudioPage(),
        ),
      ),
    );
    await tester.pump();

    expect(find.text('Soundscapes unavailable'), findsOneWidget);
    expect(
      find.text(
        'This build does not include the required Sukun soundscape assets yet.',
      ),
      findsOneWidget,
    );
    expect(find.text('Rain of Mercy'), findsNothing);
    expect(service.requestedType, isNull);
  });

  testWidgets('shows a localized playback error when a mapped sound fails', (
    tester,
  ) async {
    await tester.binding.setSurfaceSize(const Size(800, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));

    final service = FakePageAudioService(
      false,
      sukunAssets: const {'rain': 'assets/audio/ui/notification.wav'},
    );

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          audioSovereigntyServiceProvider.overrideWithValue(service),
          sukunAudioSourcesProvider.overrideWith((ref) async => const {}),
        ],
        child: MaterialApp(
          locale: const Locale('en'),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: const SukunAudioPage(),
        ),
      ),
    );
    await tester.pump();

    await tester.tap(find.text('Rain of Mercy'));
    await tester.pump();

    expect(service.requestedType, 'rain');
    expect(find.text('Audio playback failed'), findsOneWidget);
    expect(find.textContaining('Now playing:'), findsNothing);
  });

  testWidgets('uses cloud sukun sources when Supabase audio rows exist', (
    tester,
  ) async {
    await tester.binding.setSurfaceSize(const Size(800, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));

    final service = FakePageAudioService(true);

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          audioSovereigntyServiceProvider.overrideWithValue(service),
          sukunAudioSourcesProvider.overrideWith(
            (ref) async => const {
              'rain': 'https://cdn.example.com/audio/rain.mp3',
            },
          ),
        ],
        child: MaterialApp(
          locale: const Locale('en'),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: const SukunAudioPage(),
        ),
      ),
    );
    await tester.pump();

    expect(find.text('Soundscapes unavailable'), findsNothing);
    expect(find.text('Rain of Mercy'), findsOneWidget);

    await tester.tap(find.text('Rain of Mercy'));
    await tester.pump();

    expect(service.requestedType, 'rain');
    expect(
      service.requestedCloudSources['rain'],
      'https://cdn.example.com/audio/rain.mp3',
    );
  });
}
