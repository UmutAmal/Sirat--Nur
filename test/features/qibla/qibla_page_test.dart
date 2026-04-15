import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/core/services/qibla_sensor_bridge.dart';
import 'package:sirat_i_nur/features/qibla/qibla_page.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  setUpAll(() {
    final originalOnError = FlutterError.onError;
    FlutterError.onError = (FlutterErrorDetails details) {
      if (details.exceptionAsString().contains('A RenderFlex overflowed')) {
        return; // Ignore overflow errors due to Ahem font sizing in tests
      }
      originalOnError?.call(details);
    };
  });

  Widget createWidgetUnderTest(SharedPreferences prefs) {
    return ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
        qiblaSensorProvider.overrideWith((ref) {
          return Stream.value(
            QiblaOrientation(
              trueHeading: 45.0,
              magneticHeading: 45.0,
              declination: 0.0,
              accuracy: 1.0,
            ),
          );
        }),
      ],
      child: const MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: QiblaPage(),
      ),
    );
  }

  Widget createMissingLocationWidgetUnderTest(
    SharedPreferences prefs, {
    Locale? locale,
  }) {
    return ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
        qiblaSensorProvider.overrideWith((ref) {
          throw StateError(
            'Qibla sensor must not be watched without a saved location',
          );
        }),
      ],
      child: MaterialApp(
        locale: locale,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const QiblaPage(),
      ),
    );
  }

  Widget createErrorWidgetUnderTest(SharedPreferences prefs, {Locale? locale}) {
    return ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
        qiblaSensorProvider.overrideWith(
          (ref) => Stream<QiblaOrientation>.error(
            const QiblaSensorUnavailableException(),
          ),
        ),
      ],
      child: MaterialApp(
        locale: locale,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const QiblaPage(),
      ),
    );
  }

  void setMockIstanbulLocation() {
    SharedPreferences.setMockInitialValues({
      'latitude': 41.0082,
      'longitude': 28.9784,
      'locationName': 'Istanbul, Turkiye',
      'timezone': 'Europe/Istanbul',
    });
  }

  group('QiblaPage Tests', () {
    testWidgets('Renders compass and direction label', (tester) async {
      tester.view.physicalSize = const Size(
        4000,
        4000,
      ); // Massive size to avoid Ahem font text wrapping/overflow
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      setMockIstanbulLocation();
      final prefs = await SharedPreferences.getInstance();
      await tester.pumpWidget(createWidgetUnderTest(prefs));
      await tester.pumpAndSettle();

      // Expect to see the compass or the Qibla string
      expect(find.textContaining('Qibla'), findsWidgets);
    });

    testWidgets(
      'Requires a saved location instead of calculating from a fallback',
      (tester) async {
        final prefs = await SharedPreferences.getInstance();
        await tester.pumpWidget(
          createMissingLocationWidgetUnderTest(
            prefs,
            locale: const Locale('tr'),
          ),
        );
        await tester.pumpAndSettle();

        expect(find.text('Kıble için konum gerekli'), findsOneWidget);
        expect(find.textContaining('gerçek konumunuzu'), findsOneWidget);
        expect(find.textContaining('Kıble bulundu'), findsNothing);
      },
    );

    testWidgets('Localizes compass errors in Turkish', (tester) async {
      setMockIstanbulLocation();
      final prefs = await SharedPreferences.getInstance();
      await tester.pumpWidget(
        createErrorWidgetUnderTest(prefs, locale: const Locale('tr')),
      );
      await tester.pumpAndSettle();

      expect(find.textContaining('Pusula hatası:'), findsOneWidget);
      expect(
        find.textContaining('Bu cihazda pusula sensörü kullanılamıyor.'),
        findsOneWidget,
      );
      expect(find.textContaining('Compass sensor unavailable'), findsNothing);
      expect(find.textContaining('Sensor unavailable'), findsNothing);
    });

    test('Qibla error resolver hides raw exception details', () async {
      final l10n = await AppLocalizations.delegate.load(const Locale('tr'));

      expect(
        resolveQiblaErrorMessage(l10n, const QiblaSensorUnavailableException()),
        'Pusula hatası: Bu cihazda pusula sensörü kullanılamıyor.',
      );
      expect(
        resolveQiblaErrorMessage(l10n, Exception('Sensor unavailable')),
        'Pusula hatası: Bilinmeyen hata',
      );
    });

    test('hasQiblaLocation requires both coordinates', () {
      expect(hasQiblaLocation(SettingsState()), isFalse);
      expect(hasQiblaLocation(SettingsState(latitude: 41.0082)), isFalse);
      expect(hasQiblaLocation(SettingsState(longitude: 28.9784)), isFalse);
      expect(
        hasQiblaLocation(SettingsState(latitude: 41.0082, longitude: 28.9784)),
        isTrue,
      );
    });

    test('Qibla page does not keep Istanbul fallback coordinates', () {
      final source = File(
        'lib/features/qibla/qibla_page.dart',
      ).readAsStringSync();

      expect(source, isNot(contains('41.0082')));
      expect(source, isNot(contains('28.9784')));
      expect(source, isNot(contains('Fallback to Istanbul')));
    });
  });
}
