import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/core/services/app_metadata_service.dart';
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
    expect(find.text(resolveAppVersion()), findsOneWidget);
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

  testWidgets('SettingsPage labels regional prayer fallbacks honestly', (
    tester,
  ) async {
    await pumpSettingsPage(
      tester,
      prefsValues: const {
        'calculationMethod': mwlPrayerMethod,
        'madhab': shafiiMadhab,
        'latitude': 52.5200,
        'longitude': 13.4050,
        'locationName': 'Berlin, Germany',
        'countryCode': 'DE',
        'timezone': 'Europe/Berlin',
      },
    );

    expect(find.text('Prayer Authority'), findsOneWidget);
    expect(
      find.textContaining('Regional fallback using Muslim World League'),
      findsOneWidget,
    );
    expect(find.textContaining('user-selected'), findsNothing);
  });

  testWidgets('SettingsPage does not mark Morocco MWL fallback as official', (
    tester,
  ) async {
    await pumpSettingsPage(
      tester,
      prefsValues: const {
        'calculationMethod': moroccoPrayerMethod,
        'madhab': malikiMadhab,
        'latitude': 33.5731,
        'longitude': -7.5898,
        'locationName': 'Casablanca, Morocco',
        'countryCode': 'MA',
        'timezone': 'Africa/Casablanca',
      },
    );

    expect(find.text('Prayer Authority'), findsOneWidget);
    expect(
      find.textContaining('Regional fallback using Muslim World League'),
      findsOneWidget,
    );
    expect(find.textContaining('Morocco Ministry of Awqaf'), findsNothing);
  });

  testWidgets(
    'SettingsPage does not mark madhab overrides as full official authority',
    (tester) async {
      await pumpSettingsPage(
        tester,
        prefsValues: const {
          'calculationMethod': diyanetPrayerMethod,
          'madhab': jafariMadhab,
        },
        locale: const Locale('tr'),
      );

      expect(find.text('Namaz Kurumu'), findsOneWidget);
      expect(
        find.text(
          'Diyanet Isleri Baskanligi yöntemi + kullanıcının seçtiği Ja\'fari ikindi ayarı',
        ),
        findsOneWidget,
      );
      expect(find.byIcon(Icons.open_in_new_rounded), findsOneWidget);
    },
  );

  testWidgets('SettingsPage formats and exposes all madhab labels', (
    tester,
  ) async {
    await pumpSettingsPage(
      tester,
      prefsValues: const {
        'calculationMethod': mwlPrayerMethod,
        'madhab': jafariMadhab,
      },
    );

    expect(find.text("Ja'fari"), findsWidgets);

    await tester.tap(find.text('Asr Juristic Method'));
    await tester.pumpAndSettle();

    expect(find.text('Hanafi'), findsOneWidget);
    expect(find.text("Shafi'i"), findsOneWidget);
    expect(find.text('Maliki'), findsOneWidget);
    expect(find.text('Hanbali'), findsOneWidget);
    expect(find.text("Ja'fari"), findsWidgets);
    expect(find.text('Ibadi'), findsOneWidget);
  });

  testWidgets('SettingsPage builds localized share text from app metadata', (
    tester,
  ) async {
    await pumpSettingsPage(
      tester,
      prefsValues: const {
        'calculationMethod': diyanetPrayerMethod,
        'madhab': hanafiMadhab,
      },
      locale: const Locale('tr'),
    );

    final context = tester.element(find.byType(SettingsPage));
    final l10n = AppLocalizations.of(context)!;

    expect(
      buildSettingsShareText(l10n),
      'Sirat-ı Nur uygulamasına göz atın: En kapsamlı İslami yaşam uygulaması! $appWebsiteUrl',
    );
  });

  testWidgets('SettingsPage builds localized share text in French', (
    tester,
  ) async {
    await pumpSettingsPage(
      tester,
      prefsValues: const {
        'calculationMethod': diyanetPrayerMethod,
        'madhab': hanafiMadhab,
      },
      locale: const Locale('fr'),
    );

    final context = tester.element(find.byType(SettingsPage));
    final l10n = AppLocalizations.of(context)!;

    expect(
      buildSettingsShareText(l10n),
      "Découvrez Sirat-ı Nur : l'application ultime pour le mode de vie islamique ! $appWebsiteUrl",
    );
  });

  testWidgets(
    'SettingsPage shows the canonical reciter name from audio state',
    (tester) async {
      await pumpSettingsPage(
        tester,
        prefsValues: const {'audioVoice': sudaisVoice},
        locale: const Locale('tr'),
      );

      expect(find.text('Ses Seçimi'), findsOneWidget);
      expect(find.text('Abdul Rahman Al-Sudais'), findsOneWidget);
    },
  );

  testWidgets(
    'SettingsPage exposes every offline Quran reciter in voice picker',
    (tester) async {
      await pumpSettingsPage(
        tester,
        prefsValues: const {'audioVoice': misharyAlafasyVoice},
        locale: const Locale('tr'),
      );

      await tester.tap(find.text('Ses Seçimi'));
      await tester.pumpAndSettle();

      expect(find.text('Mishary Rashid Alafasy'), findsWidgets);
      expect(find.text('Mahmoud Khalil Al-Husary'), findsOneWidget);
      expect(find.text('Abdul Basit (Murattal)'), findsOneWidget);
      expect(find.text('Abdul Basit (Mujawwad)'), findsOneWidget);
      expect(find.text('Saoud Al-Shuraim'), findsOneWidget);
      expect(find.text('Abdul Rahman Al-Sudais'), findsOneWidget);
    },
  );

  test('SettingsPage renders location names from a local snapshot', () {
    final source = File(
      'lib/features/settings/settings_page.dart',
    ).readAsStringSync();

    expect(source, contains('final locationName = settings.locationName;'));
    expect(source, isNot(contains('settings.locationName!')));
  });
}
