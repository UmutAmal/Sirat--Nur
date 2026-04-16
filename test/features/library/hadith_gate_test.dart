import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/library/hadith_list_page.dart';
import 'package:sirat_i_nur/features/library/hadith_search_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

Widget _wrap(Widget child) {
  return ProviderScope(
    child: MaterialApp(
      locale: const Locale('en'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: child,
    ),
  );
}

void main() {
  testWidgets(
    'HadithListPage shows honest unavailable state when dataset is unverified',
    (tester) async {
      await tester.pumpWidget(
        _wrap(const HadithListPage(collectionId: 'bukhari')),
      );
      await tester.pumpAndSettle();

      expect(
        find.text('Verified hadith collections are not available yet'),
        findsOneWidget,
      );
      expect(
        find.textContaining('unverified external hadith feed'),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'HadithSearchPage shows honest unavailable state when dataset is unverified',
    (tester) async {
      await tester.pumpWidget(_wrap(const HadithSearchPage()));
      await tester.pumpAndSettle();

      expect(
        find.text('Verified hadith collections are not available yet'),
        findsOneWidget,
      );
      expect(
        find.textContaining('Hadith browsing stays disabled'),
        findsOneWidget,
      );
    },
  );
}
