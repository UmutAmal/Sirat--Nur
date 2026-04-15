import 'package:flutter_test/flutter_test.dart';
import 'package:adhan/adhan.dart';
import 'package:sirat_i_nur/core/services/prayer_profile_service.dart';

void main() {
  group('Prayer profile resolver', () {
    test('maps Turkey to Diyanet Hanafi defaults', () {
      final profile = resolvePrayerProfile(
        countryCode: 'TR',
        timezone: 'Europe/Istanbul',
      );

      expect(profile.calculationMethod, diyanetPrayerMethod);
      expect(profile.madhab, hanafiMadhab);
      expect(profile.sourceUrl, 'https://namazvakitleri.diyanet.gov.tr');
    });

    test('maps Malaysia to JAKIM Shafii defaults', () {
      final profile = resolvePrayerProfile(
        countryCode: 'MY',
        timezone: 'Asia/Kuala_Lumpur',
      );

      expect(profile.calculationMethod, jakimPrayerMethod);
      expect(profile.madhab, shafiiMadhab);
      expect(profile.sourceUrl, 'https://www.islam.gov.my/ms/e-solat');
    });

    test('maps Iran to Tehran Jafari defaults', () {
      final profile = resolvePrayerProfile(
        countryCode: 'IR',
        timezone: 'Asia/Tehran',
      );

      expect(profile.calculationMethod, tehranPrayerMethod);
      expect(profile.madhab, jafariMadhab);
    });

    test('falls back to MWL for unsupported European country codes', () {
      final profile = resolvePrayerProfile(
        countryCode: 'DE',
        timezone: 'Europe/Berlin',
      );

      expect(profile.calculationMethod, mwlPrayerMethod);
      expect(profile.madhab, shafiiMadhab);
    });

    test('maps Gulf timezones when country code is unavailable', () {
      final cases = <String, String>{
        'Asia/Riyadh': ummAlQuraPrayerMethod,
        'Asia/Dubai': dubaiPrayerMethod,
        'Asia/Kuwait': kuwaitPrayerMethod,
        'Asia/Qatar': qatarPrayerMethod,
        'Asia/Bahrain': ummAlQuraPrayerMethod,
        'Asia/Muscat': ummAlQuraPrayerMethod,
      };

      for (final entry in cases.entries) {
        final profile = resolvePrayerProfile(timezone: entry.key);

        expect(
          profile.calculationMethod,
          entry.value,
          reason: '${entry.key} must not fall through to generic MWL',
        );
      }
    });

    test('maps regional Indonesia and Malaysia timezones', () {
      final cases = <String, String>{
        'Asia/Jakarta': kemenagPrayerMethod,
        'Asia/Makassar': kemenagPrayerMethod,
        'Asia/Jayapura': kemenagPrayerMethod,
        'Asia/Pontianak': kemenagPrayerMethod,
        'Asia/Kuala_Lumpur': jakimPrayerMethod,
        'Asia/Kuching': jakimPrayerMethod,
      };

      for (final entry in cases.entries) {
        final profile = resolvePrayerProfile(timezone: entry.key);

        expect(profile.calculationMethod, entry.value);
      }
    });

    test('limits ISNA timezone fallback to US and Canada zones', () {
      expect(
        resolvePrayerProfile(timezone: 'America/New_York').calculationMethod,
        isnaPrayerMethod,
      );
      expect(
        resolvePrayerProfile(timezone: 'America/Toronto').calculationMethod,
        isnaPrayerMethod,
      );
      expect(
        resolvePrayerProfile(timezone: 'America/Sao_Paulo').calculationMethod,
        mwlPrayerMethod,
      );
    });
  });

  group('Prayer parameter builder', () {
    test('normalizes legacy method aliases', () {
      expect(normalizeCalculationMethod('Turkey'), diyanetPrayerMethod);
      expect(normalizeCalculationMethod('ISNA'), isnaPrayerMethod);
      expect(normalizeCalculationMethod('Umm Al-Qura'), ummAlQuraPrayerMethod);
      expect(normalizeCalculationMethod('Singapore'), muisPrayerMethod);
    });

    test('builds official interval profile for Umm al-Qura', () {
      final params = buildCalculationParameters(ummAlQuraPrayerMethod);

      expect(params.fajrAngle, 18.5);
      expect(params.ishaInterval, 90);
      expect(params.ishaAngle, isNull);
    });

    test(
      'builds Tehran profile with maghrib angle and jafari-compatible shadow factor',
      () {
        final params = buildCalculationParameters(tehranPrayerMethod)
          ..madhab = resolveAdhanMadhab(jafariMadhab);

        expect(params.fajrAngle, 17.7);
        expect(params.maghribAngle, 4.5);
        expect(params.ishaAngle, 14.0);
        expect(params.madhab.name, 'shafi');
      },
    );

    test('applies twilight-angle high latitude rule above 48 degrees', () {
      final params = buildCalculationParameters(mwlPrayerMethod);

      applyAutomaticHighLatitudeRule(params, 52.52);

      expect(params.highLatitudeRule, HighLatitudeRule.twilight_angle);
    });

    test('keeps existing explicit high latitude rule below threshold', () {
      final params = buildCalculationParameters(mwlPrayerMethod)
        ..highLatitudeRule = HighLatitudeRule.seventh_of_the_night;

      applyAutomaticHighLatitudeRule(params, 41.0082);

      expect(params.highLatitudeRule, HighLatitudeRule.seventh_of_the_night);
    });

    test('marks only institution-backed profiles as official authorities', () {
      expect(
        hasOfficialPrayerAuthority(profileForMethod(diyanetPrayerMethod)),
        isTrue,
      );
      expect(
        hasOfficialPrayerAuthority(profileForMethod(customPrayerMethod)),
        isFalse,
      );
    });
  });
}
