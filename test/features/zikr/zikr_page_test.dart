import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/features/zikr/zikr_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  Widget buildTestApp({Locale? locale}) {
    return ProviderScope(
      child: MaterialApp(
        locale: locale,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const ZikrPage(),
      ),
    );
  }

  testWidgets('ZikrPage shows localized completion copy in Turkish', (
    tester,
  ) async {
    await tester.pumpWidget(buildTestApp(locale: const Locale('tr')));
    await tester.pumpAndSettle();

    for (var i = 0; i < 33; i++) {
      await tester.tap(find.text('$i'));
      await tester.pump();
    }
    await tester.pumpAndSettle();

    expect(find.text('Tamamlandı! Maşallah'), findsOneWidget);
  });

  testWidgets('ZikrPage shows localized zikr meanings in Turkish', (
    tester,
  ) async {
    await tester.pumpWidget(buildTestApp(locale: const Locale('tr')));
    await tester.pumpAndSettle();

    expect(find.text('Allah her türlü noksanlıktan uzaktır.'), findsOneWidget);
    expect(find.text('Glory be to Allah'), findsNothing);
  });
}
