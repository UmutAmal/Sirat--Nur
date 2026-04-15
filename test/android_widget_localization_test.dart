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

      expect(nextPrayerProvider, contains('"next_prayer_header"'));
      expect(nextPrayerProvider, contains('R.id.tv_next_prayer_header'));
      expect(nextPrayerProvider, isNot(contains('.toUpperCase()')));
      expect(allPrayersProvider, contains('"all_prayers_header"'));
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

      expect(nextPrayerLayout, contains('@+id/tv_next_prayer_header'));
      expect(allPrayersLayout, contains('@+id/tv_all_prayers_header'));
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
  });
}
