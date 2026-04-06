import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/services/audio_sovereignty_service.dart';
import 'package:sirat_i_nur/features/library/sukun_audio_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

class NoopSovereignAudioEngine implements SovereignAudioEngine {
  @override
  void dispose() {}

  @override
  Future<bool> playAsset(String assetPath) async => false;

  @override
  Future<void> setVolume(double volume) async {}

  @override
  Future<void> stop() async {}
}

class FakePageAudioService extends AudioSovereigntyService {
  FakePageAudioService(this.playResult) : super(engine: NoopSovereignAudioEngine());

  final bool playResult;
  String? requestedType;

  @override
  Future<bool> playSukun(String natureType) async {
    requestedType = natureType;
    return playResult;
  }
}

void main() {
  testWidgets('shows a localized error instead of false success when playback fails', (
    tester,
  ) async {
    await tester.binding.setSurfaceSize(const Size(800, 1200));
    addTearDown(() => tester.binding.setSurfaceSize(null));

    final service = FakePageAudioService(false);

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          audioSovereigntyServiceProvider.overrideWithValue(service),
        ],
        child: MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: const SukunAudioPage(),
        ),
      ),
    );

    await tester.tap(find.text('Rain of Mercy'));
    await tester.pump();

    expect(service.requestedType, 'rain');
    expect(find.text('Error'), findsOneWidget);
    expect(find.textContaining('Now playing:'), findsNothing);
  });
}
