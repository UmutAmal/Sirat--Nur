import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/utils/prayer_name_localization.dart';

void main() {
  group('PrayerLocalizer', () {
    test('uses generated prayer names for supported locales', () {
      expect(PrayerLocalizer.localize('Fajr', 'tr'), 'İmsak');
      expect(PrayerLocalizer.localize('Isha', 'ar'), 'العشاء');
    });

    test('builds localized prayer notification copy in Turkish', () {
      expect(PrayerLocalizer.notificationTitle('Fajr', 'tr'), 'İmsak vakti');
      expect(
        PrayerLocalizer.notificationBody('Fajr', 'tr'),
        'İmsak vakti geldi.',
      );
    });

    test('builds localized adhan notification channel copy in Turkish', () {
      expect(
        PrayerLocalizer.notificationChannelName('tr'),
        'Ezan Bildirimleri',
      );
      expect(
        PrayerLocalizer.notificationChannelDescription('tr'),
        'Ezan sesiyle namaz vakti uyarıları.',
      );
    });

    test('builds localized widget heading copy in Turkish', () {
      expect(PrayerLocalizer.nextPrayerLabel('tr'), 'Sıradaki Namaz');
      expect(PrayerLocalizer.prayerTimesLabel('tr'), 'Namaz Vakitleri');
    });

    test('falls back to English for unsupported locales', () {
      expect(PrayerLocalizer.notificationTitle('Asr', 'zz'), 'Time for Asr');
      expect(
        PrayerLocalizer.notificationBody('Asr', 'zz'),
        'It is time to pray Asr.',
      );
    });

    test('AdhanSchedulerService resolves channel copy through l10n', () {
      final source = File(
        'lib/core/services/adhan_scheduler_service.dart',
      ).readAsStringSync();

      expect(source, contains('PrayerLocalizer.notificationChannelName'));
      expect(
        source,
        contains('PrayerLocalizer.notificationChannelDescription'),
      );
      expect(source, isNot(contains("'Adhan Notifications'")));
      expect(source, isNot(contains("'High precision Islamic prayer alerts'")));
    });
  });
}
