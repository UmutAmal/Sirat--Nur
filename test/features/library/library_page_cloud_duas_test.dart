import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/constants/duas_data.dart';
import 'package:sirat_i_nur/core/network/supabase_config.dart';
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
  List<Map<String, dynamic>>? educationCategories,
  AudioSovereigntyService? audioService,
  Map<String, String>? cloudSources,
  Locale locale = const Locale('en'),
}) async {
  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        dailyDuasProvider.overrideWith((ref) async => duas),
        educationCategoriesProvider.overrideWith(
          (ref) async => educationCategories ?? <Map<String, dynamic>>[],
        ),
        audioSovereigntyServiceProvider.overrideWithValue(
          audioService ?? AudioSovereigntyService(engine: _NoopAudioEngine()),
        ),
        sukunAudioSourcesProvider.overrideWith(
          (ref) async => cloudSources ?? const {},
        ),
      ],
      child: MaterialApp(
        locale: locale,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const LibraryPage(),
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
  group('Education cloud row sanitizers', () {
    test('categories keep only rows with usable id and title', () {
      final categories = resolveEducationCategories([
        {
          'id': ' faith ',
          'title': '  Faith Basics  ',
          'title_en': ' Basics ',
          'icon': ' 🕌 ',
        },
        {'id': '', 'title': 'No id'},
        {'id': 'missing-title', 'title': ' '},
        {'id': 7, 'title': 'Numeric id', 'title_en': 99, 'icon': 42},
      ]);

      expect(categories, [
        {
          'id': 'faith',
          'title': 'Faith Basics',
          'title_en': 'Basics',
          'icon': '🕌',
        },
        {'id': '7', 'title': 'Numeric id', 'title_en': '', 'icon': '📚'},
      ]);
    });

    test('topics keep only rows with usable title and content', () {
      final topics = resolveEducationTopics([
        {
          'title': '  Prayer  ',
          'title_en': ' Salah ',
          'content': '  Verified lesson body  ',
        },
        {'title': 'Missing content', 'content': ' '},
        {'title': 99, 'content': 'Non-string title'},
        {'title': 'Non-string content', 'content': 99},
      ]);

      expect(topics, [
        {
          'title': 'Prayer',
          'title_en': 'Salah',
          'content': 'Verified lesson body',
        },
      ]);
    });
  });

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

  testWidgets(
    'LibraryPage shows verified Quran fallback when cloud duas are empty',
    (tester) async {
      final en = lookupAppLocalizations(const Locale('en'));

      try {
        await pumpLibraryPage(tester, duas: resolveCloudDuas(const []));

        expect(find.text(en.essentialDuas('8')), findsOneWidget);
        expect(find.text(en.duaUnavailableTitle), findsNothing);

        await tester.tap(find.text(en.dailyDuas).first);
        await tester.pumpAndSettle();

        expect(tester.takeException(), isNull);
        expect(
          find.textContaining('وَمِنْهُم مَّن يَقُولُ رَبَّنَآ'),
          findsOneWidget,
        );
        expect(find.text(en.duaCategoryQuranic), findsWidgets);
        expect(find.text('${en.quran} 2:201'), findsOneWidget);
        expect(find.text(en.duaUnavailableBody), findsNothing);
      } finally {
        await disposeLibraryPage(tester);
      }
    },
  );

  testWidgets(
    'LibraryPage localizes bundled dua meanings for supported locales',
    (tester) async {
      final de = lookupAppLocalizations(const Locale('de'));

      try {
        await pumpLibraryPage(
          tester,
          duas: resolveCloudDuas(const []),
          locale: const Locale('de'),
        );

        await tester.tap(find.text(de.dailyDuas).first);
        await tester.pumpAndSettle();

        expect(find.text(de.duaMeaning1), findsOneWidget);
        expect(
          find.text(
            'others pray, ‘Our Lord, give us good in this world and in the Hereafter, and protect us from the torment of the Fire.’',
          ),
          findsNothing,
        );
      } finally {
        await disposeLibraryPage(tester);
      }
    },
  );

  testWidgets('LibraryPage enables sukun subtitle when cloud audio exists', (
    tester,
  ) async {
    final en = lookupAppLocalizations(const Locale('en'));

    try {
      await pumpLibraryPage(
        tester,
        duas: const [],
        cloudSources: const {
          'rain':
              '${SupabaseConfig.url}/storage/v1/object/public/audio-sukun/rain.mp3',
        },
      );

      expect(find.text(en.sukunMixerSubtitle), findsOneWidget);
      expect(find.text(en.sukunUnavailableTitle), findsNothing);
    } finally {
      await disposeLibraryPage(tester);
    }
  });

  testWidgets(
    'LibraryPage filters unsafe education category rows before render',
    (tester) async {
      try {
        await pumpLibraryPage(
          tester,
          duas: const [],
          educationCategories: const [
            {'id': '', 'title': 'No id category'},
            {
              'id': 'faith',
              'title': '  Faith Basics  ',
              'title_en': 99,
              'icon': 7,
            },
          ],
        );
        await tester.pump(const Duration(milliseconds: 500));

        expect(tester.takeException(), isNull);
        expect(find.text('Faith Basics'), findsOneWidget);
        expect(find.text('No id category'), findsNothing);
        expect(find.text('99'), findsNothing);
        expect(find.text('📚'), findsOneWidget);
      } finally {
        await disposeLibraryPage(tester);
      }
    },
  );
}
