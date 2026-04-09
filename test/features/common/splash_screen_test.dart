import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';
import 'package:sirat_i_nur/main.dart';

void main() {
  testWidgets('SplashScreen renders localized tagline', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        locale: Locale('tr'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: SplashScreen(),
      ),
    );

    expect(find.text('Sirat-i Nur'), findsOneWidget);
    expect(find.text('İslami Işık Yolu'), findsOneWidget);
  });
}
