import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/onboarding/onboarding_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

Future<void> pumpOnboardingPage(WidgetTester tester, Locale locale) async {
  await tester.pumpWidget(
    MaterialApp(
      locale: locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const OnboardingPage(),
    ),
  );

  await tester.pumpAndSettle();
}

void main() {
  testWidgets('OnboardingPage renders localized Turkish onboarding copy', (
    tester,
  ) async {
    await pumpOnboardingPage(tester, const Locale('tr'));

    expect(find.text("Sirat-ı Nur'a Hoş Geldiniz"), findsOneWidget);
    expect(
      find.text(
        "Namaz vakitleri, Kur'an ve daha fazlası için tam İslami yardımcınız",
      ),
      findsOneWidget,
    );
    expect(find.text('İleri'), findsOneWidget);

    await tester.tap(find.text('İleri'));
    await tester.pumpAndSettle();

    expect(find.text('Namaz Vakitleri'), findsOneWidget);
    expect(find.text('Konumunuza göre doğru namaz vakitleri'), findsOneWidget);
  });
}
