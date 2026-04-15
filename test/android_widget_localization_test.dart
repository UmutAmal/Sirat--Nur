import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Android prayer widgets localization bridge', () {
    test('Flutter widget service writes localized label keys', () {
      final source = File(
        'lib/core/services/widget_service.dart',
      ).readAsStringSync();

      expect(source, contains("'next_prayer_header'"));
      expect(source, contains('PrayerLocalizer.nextPrayerLabel'));
      expect(source, contains("'all_prayers_header'"));
      expect(source, contains('PrayerLocalizer.prayerTimesLabel'));
      expect(source, contains("'qibla_header'"));
      expect(source, contains('PrayerLocalizer.qiblaLabel'));
      expect(source, contains("'ayah_header'"));
      expect(source, contains('PrayerLocalizer.dailyVerseLabel'));
      for (final key in <String>[
        'fajr_label',
        'dhuhr_label',
        'asr_label',
        'maghrib_label',
        'isha_label',
      ]) {
        expect(source, contains("'$key'"));
      }
    });

    test('native providers read labels from HomeWidget preferences', () {
      final nextPrayerProvider = File(
        'android/app/src/main/java/com/umutamal/sirat_i_nur/PrayerWidgetProvider.java',
      ).readAsStringSync();
      final allPrayersProvider = File(
        'android/app/src/main/java/com/umutamal/sirat_i_nur/AllPrayersWidgetProvider.java',
      ).readAsStringSync();
      final qiblaProvider = File(
        'android/app/src/main/java/com/umutamal/sirat_i_nur/QiblaWidgetProvider.java',
      ).readAsStringSync();
      final ayahProvider = File(
        'android/app/src/main/java/com/umutamal/sirat_i_nur/AyahWidgetProvider.java',
      ).readAsStringSync();

      expect(nextPrayerProvider, contains('"next_prayer_header"'));
      expect(nextPrayerProvider, contains('R.id.tv_next_prayer_header'));
      expect(nextPrayerProvider, isNot(contains('.toUpperCase()')));
      expect(allPrayersProvider, contains('"all_prayers_header"'));
      expect(qiblaProvider, contains('"qibla_header"'));
      expect(qiblaProvider, contains('R.id.tv_qibla_header'));
      expect(ayahProvider, contains('"ayah_header"'));
      expect(ayahProvider, contains('R.id.tv_ayah_header'));
      for (final id in <String>[
        'tv_fajr_label',
        'tv_dhuhr_label',
        'tv_asr_label',
        'tv_maghrib_label',
        'tv_isha_label',
      ]) {
        expect(allPrayersProvider, contains('R.id.$id'));
      }
    });

    test('native widget layouts expose text views for localized labels', () {
      final nextPrayerLayout = File(
        'android/app/src/main/res/layout/widget_prayer.xml',
      ).readAsStringSync();
      final allPrayersLayout = File(
        'android/app/src/main/res/layout/widget_all_prayers.xml',
      ).readAsStringSync();
      final qiblaLayout = File(
        'android/app/src/main/res/layout/widget_qibla.xml',
      ).readAsStringSync();
      final ayahLayout = File(
        'android/app/src/main/res/layout/widget_ayah.xml',
      ).readAsStringSync();

      expect(nextPrayerLayout, contains('@+id/tv_next_prayer_header'));
      expect(allPrayersLayout, contains('@+id/tv_all_prayers_header'));
      expect(qiblaLayout, contains('@+id/tv_qibla_header'));
      expect(ayahLayout, contains('@+id/tv_ayah_header'));
      for (final id in <String>[
        'tv_fajr_label',
        'tv_dhuhr_label',
        'tv_asr_label',
        'tv_maghrib_label',
        'tv_isha_label',
      ]) {
        expect(allPrayersLayout, contains('@+id/$id'));
      }
    });

    test('native widget layouts keep sample copy as preview-only text', () {
      final layouts = [
        File('android/app/src/main/res/layout/widget_prayer.xml'),
        File('android/app/src/main/res/layout/widget_all_prayers.xml'),
        File('android/app/src/main/res/layout/widget_qibla.xml'),
        File('android/app/src/main/res/layout/widget_ayah.xml'),
      ];

      for (final layoutFile in layouts) {
        final layout = layoutFile.readAsStringSync();

        expect(
          layout,
          isNot(contains('android:text="')),
          reason:
              '${layoutFile.path} must not ship runtime hardcoded widget text',
        );
        expect(
          layout,
          contains('tools:text='),
          reason:
              '${layoutFile.path} should keep design-time preview copy only',
        );
      }
    });

    test('native providers do not fall back to hardcoded English copy', () {
      final providerSources = [
        File(
          'android/app/src/main/java/com/umutamal/sirat_i_nur/PrayerWidgetProvider.java',
        ).readAsStringSync(),
        File(
          'android/app/src/main/java/com/umutamal/sirat_i_nur/AllPrayersWidgetProvider.java',
        ).readAsStringSync(),
        File(
          'android/app/src/main/java/com/umutamal/sirat_i_nur/QiblaWidgetProvider.java',
        ).readAsStringSync(),
        File(
          'android/app/src/main/java/com/umutamal/sirat_i_nur/AyahWidgetProvider.java',
        ).readAsStringSync(),
      ];
      const staleFallbacks = [
        '"Next Prayer"',
        '"Prayer Times"',
        '"Daily Prayer Times"',
        '"Fajr"',
        '"Dhuhr"',
        '"Asr"',
        '"Maghrib"',
        '"Isha"',
        '"Qibla"',
        '"Daily Verse"',
        '"00:00"',
      ];

      for (final source in providerSources) {
        for (final fallback in staleFallbacks) {
          expect(
            source,
            isNot(contains(fallback)),
            reason: 'Native provider still contains stale fallback $fallback',
          );
        }
      }
    });

    test('manifest registers every HomeWidget provider used by Flutter', () {
      final manifest = File(
        'android/app/src/main/AndroidManifest.xml',
      ).readAsStringSync();
      final widgetService = File(
        'lib/core/services/widget_service.dart',
      ).readAsStringSync();

      for (final provider in <String>[
        'PrayerWidgetProvider',
        'AllPrayersWidgetProvider',
        'QiblaWidgetProvider',
        'AyahWidgetProvider',
      ]) {
        expect(widgetService, contains(provider));
        expect(manifest, contains('.$provider'));
      }
      expect(manifest, contains('@xml/widget_info_qibla'));
      expect(manifest, contains('@xml/widget_info_ayah'));
    });

    test('does not ship unregistered appwidget provider XML files', () {
      final manifest = File(
        'android/app/src/main/AndroidManifest.xml',
      ).readAsStringSync();
      final referencedXml = RegExp(
        r'@xml/([A-Za-z0-9_]+)',
      ).allMatches(manifest).map((match) => match.group(1)!).toSet();
      final widgetInfoXml = Directory('android/app/src/main/res/xml')
          .listSync()
          .whereType<File>()
          .where((file) => file.uri.pathSegments.last.startsWith('widget_info'))
          .map((file) => file.uri.pathSegments.last.replaceAll('.xml', ''))
          .toSet();

      expect(widgetInfoXml.difference(referencedXml), isEmpty);
    });
  });
}
