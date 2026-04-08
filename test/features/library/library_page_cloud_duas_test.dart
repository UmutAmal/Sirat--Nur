import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/constants/duas_data.dart';
import 'package:sirat_i_nur/core/providers/supabase_providers.dart';
import 'package:sirat_i_nur/core/services/audio_sovereignty_service.dart';
import 'package:sirat_i_nur/features/library/library_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

class _NoopAudioEngine implements SovereignAudioEngine {
  @override
  void dispose() {}

  @override
  Future<bool> playAsset(String assetPath) async => true;

  @override
  Future<bool> playUrl(String url) async => true;

  @override
  Future<void> setVolume(double volume) async {}

  @override
  Future<void> stop() async {}
}

Future<void> pumpLibraryPage(
  WidgetTester tester, {
  required List<DuaData> duas,
  AudioSovereigntyService? audioService,
  Map<String, String>? cloudSources,
}) async {
  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        dailyDuasProvider.overrideWith((ref) async => duas),
        educationCategoriesProvider.overrideWith(
          (ref) async => <Map<String, dynamic>>[],
        ),
        audioSovereigntyServiceProvider.overrideWithValue(
          audioService ?? AudioSovereigntyService(engine: _NoopAudioEngine()),
        ),
        sukunAudioSourcesProvider.overrideWith(
          (ref) async => cloudSources ?? const {},
        ),
      ],
      child: const MaterialApp(
        locale: Locale('en'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: LibraryPage(),
      ),
    ),
  );

  await tester.pump(const Duration(milliseconds: 900));
}

Future<void> disposeLibraryPage(WidgetTester tester) async {
  await tester.pumpWidget(const SizedBox.shrink());
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('LibraryPage uses cloud dua data when provider resolves', (
    tester,
  ) async {
    const cloudDua = DuaData(
      id: 'cloud-1',
      arabic: 'دعاء سحابي',
      transliteration: 'cloud dua',
      turkish: 'Bulut dua',
      english: 'Cloud dua meaning',
      source: 'Buhari',
      category: 'Sabah Akşam',
    );

    try {
      await pumpLibraryPage(tester, duas: const [cloudDua]);

      expect(find.text('1 essential duas'), findsOneWidget);

      await tester.tap(find.text('Daily Duas').first);
      await tester.pumpAndSettle();

      expect(find.text('دعاء سحابي'), findsOneWidget);
      expect(find.text('cloud dua'), findsOneWidget);
      expect(find.text('Cloud dua meaning'), findsOneWidget);
      expect(find.text('Morning & Evening'), findsOneWidget);
      expect(find.text('Bukhari'), findsOneWidget);
    } finally {
      await disposeLibraryPage(tester);
    }
  });

  testWidgets('LibraryPage disables sukun entry when no soundscapes exist', (
    tester,
  ) async {
    final en = lookupAppLocalizations(const Locale('en'));

    try {
      await pumpLibraryPage(tester, duas: const []);

      expect(find.text(en.sukunUnavailableTitle), findsOneWidget);

      await tester.tap(find.text(en.sukunAudioTitle).first);
      await tester.pumpAndSettle();

      expect(tester.takeException(), isNull);
      expect(find.byType(LibraryPage), findsOneWidget);
      expect(find.text(en.sukunUnavailableTitle), findsOneWidget);
    } finally {
      await disposeLibraryPage(tester);
    }
  });

  testWidgets('LibraryPage enables sukun subtitle when cloud audio exists', (
    tester,
  ) async {
    final en = lookupAppLocalizations(const Locale('en'));

    try {
      await pumpLibraryPage(
        tester,
        duas: const [],
        cloudSources: const {'rain': 'https://cdn.example.com/rain.mp3'},
      );

      expect(find.text(en.sukunMixerSubtitle), findsOneWidget);
      expect(find.text(en.sukunUnavailableTitle), findsNothing);
    } finally {
      await disposeLibraryPage(tester);
    }
  });
}
