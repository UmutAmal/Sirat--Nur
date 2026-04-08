import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/providers/supabase_providers.dart';
import 'package:sirat_i_nur/features/library/asma_ul_husna_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  Widget createWidgetUnderTest({List<Map<String, dynamic>>? asmaNames}) {
    return ProviderScope(
      overrides: [
        if (asmaNames != null)
          asmaUlHusnaProvider.overrideWith((ref) async => asmaNames),
      ],
      child: MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const AsmaUlHusnaPage(),
      ),
    );
  }

  group('AsmaUlHusnaPage Tests', () {
    testWidgets('Renders AppBar and Search Field', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pumpAndSettle();

      expect(find.byType(TextField), findsOneWidget);
      expect(find.byIcon(Icons.search_rounded), findsOneWidget);
    });

    testWidgets('Renders list of Asma items', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pumpAndSettle();

      // At least one item with Arabic text should be rendered
      expect(find.text('الرَّحْمَنُ'), findsWidgets);

      // Check for the first English/Turkish meaning
      expect(find.textContaining('Beneficent'), findsWidgets);
    });

    testWidgets('Search filters correctly', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pumpAndSettle();

      // Enter search term that matches a specific name
      await tester.enterText(find.byType(TextField), 'malik');
      await tester.pumpAndSettle();

      // Should find Al-Malik but not Ar-Rahman
      expect(
        find.textContaining('Al Malik', skipOffstage: false),
        findsWidgets,
      );
      expect(find.text('الرَّحْمَنُ'), findsNothing);
    });

    testWidgets('Uses cloud asma data when provider resolves', (tester) async {
      await tester.pumpWidget(
        createWidgetUnderTest(
          asmaNames: [
            {
              'id': 101,
              'arabic': 'الْوَدُودُ',
              'transliteration': 'Al Wudood',
              'translations': {
                'en': 'Provider English Meaning',
                'tr': 'Saglayici Turkce anlam',
              },
              'audioUrl': 'https://example.com/audio.mp3',
            },
          ],
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('Al Wudood'), findsOneWidget);
      expect(find.text('Provider English Meaning'), findsOneWidget);
    });
  });
}
