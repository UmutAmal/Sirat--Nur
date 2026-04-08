import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/core/services/prayer_profile_service.dart';
import 'package:sirat_i_nur/features/settings/settings_page.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

Future<void> pumpSettingsPage(
  WidgetTester tester, {
  required Map<String, Object> prefsValues,
  Locale locale = const Locale('en'),
}) async {
  SharedPreferences.setMockInitialValues(prefsValues);
  final prefs = await SharedPreferences.getInstance();

  await tester.pumpWidget(
    ProviderScope(
      overrides: [sharedPreferencesProvider.overrideWithValue(prefs)],
      child: MaterialApp(
        locale: locale,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const SettingsPage(),
      ),
    ),
  );

  await tester.pumpAndSettle();
}

void main() {
  testWidgets('SettingsPage shows the active official prayer authority', (
    tester,
  ) async {
    await pumpSettingsPage(
      tester,
      prefsValues: const {
        'calculationMethod': diyanetPrayerMethod,
        'madhab': hanafiMadhab,
      },
    );

    expect(find.text('Prayer Authority'), findsOneWidget);
    expect(find.textContaining('Diyanet Isleri Baskanligi'), findsOneWidget);
    expect(
      find.textContaining('https://namazvakitleri.diyanet.gov.tr'),
      findsOneWidget,
    );
    expect(find.byIcon(Icons.open_in_new_rounded), findsOneWidget);
  });

  testWidgets('SettingsPage shows an honest custom prayer authority state', (
    tester,
  ) async {
    await pumpSettingsPage(
      tester,
      prefsValues: const {
        'calculationMethod': customPrayerMethod,
        'madhab': jafariMadhab,
      },
      locale: const Locale('tr'),
    );

    expect(find.text('Namaz Kurumu'), findsOneWidget);
    expect(find.text('Kurumsal kaynak yok; manuel özel açı'), findsOneWidget);
    expect(find.byIcon(Icons.block_rounded), findsOneWidget);
    expect(find.byIcon(Icons.open_in_new_rounded), findsNothing);
  });
}
