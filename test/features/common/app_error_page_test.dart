import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/common/app_error_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  Widget buildTestApp({Locale? locale, Exception? error}) {
    return MaterialApp(
      locale: locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: AppErrorPage(error: error),
    );
  }

  testWidgets('AppErrorPage localizes generic fallback copy in Turkish', (
    tester,
  ) async {
    await tester.pumpWidget(buildTestApp(locale: const Locale('tr')));

    expect(find.text('Bir hata oluştu'), findsOneWidget);
    expect(find.text('Bilinmeyen hata'), findsOneWidget);
  });

  testWidgets('AppErrorPage shows the provided exception message', (
    tester,
  ) async {
    await tester.pumpWidget(
      buildTestApp(
        locale: const Locale('en'),
        error: Exception('Network timeout'),
      ),
    );

    expect(find.text('An error occurred'), findsOneWidget);
    expect(find.textContaining('Network timeout'), findsOneWidget);
    expect(find.text('Unknown error'), findsNothing);
  });
}
