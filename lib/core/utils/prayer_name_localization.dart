import 'package:flutter/widgets.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

class PrayerLocalizer {
  static String localize(String prayerName, String languageCode) {
    final l10n = _lookup(languageCode);
    switch (prayerName) {
      case 'Fajr':
        return l10n.fajr;
      case 'Sunrise':
        return l10n.sunrise;
      case 'Dhuhr':
        return l10n.dhuhr;
      case 'Asr':
        return l10n.asr;
      case 'Maghrib':
        return l10n.maghrib;
      case 'Isha':
        return l10n.isha;
      default:
        return prayerName;
    }
  }

  static String notificationTitle(String prayerName, String languageCode) {
    final l10n = _lookup(languageCode);
    return l10n.prayerNotificationTitle(localize(prayerName, languageCode));
  }

  static String notificationBody(String prayerName, String languageCode) {
    final l10n = _lookup(languageCode);
    return l10n.prayerNotificationBody(localize(prayerName, languageCode));
  }

  static String notificationChannelName(String languageCode) {
    return _lookup(languageCode).adhanNotificationChannelName;
  }

  static String notificationChannelDescription(String languageCode) {
    return _lookup(languageCode).adhanNotificationChannelDescription;
  }

  static String nextPrayerLabel(String languageCode) {
    return _lookup(languageCode).nextPrayer;
  }

  static String prayerTimesLabel(String languageCode) {
    return _lookup(languageCode).prayerTimes;
  }

  static String qiblaLabel(String languageCode) {
    return _lookup(languageCode).qibla;
  }

  static String qiblaDirectionLabel(String languageCode) {
    return _lookup(languageCode).qiblaDirection;
  }

  static String dailyVerseLabel(String languageCode) {
    return _lookup(languageCode).dailyVerse;
  }

  static AppLocalizations _lookup(String languageCode) {
    try {
      return lookupAppLocalizations(_parseLocale(languageCode));
    } catch (_) {
      return lookupAppLocalizations(const Locale('en'));
    }
  }

  static Locale _parseLocale(String languageCode) {
    final normalized = languageCode.trim().replaceAll('-', '_');
    if (normalized.isEmpty) {
      return const Locale('en');
    }

    final parts = normalized.split('_');
    final language = parts.first.toLowerCase();
    if (parts.length == 1) {
      return Locale(language);
    }

    final country = parts[1].toUpperCase();
    return Locale(language, country);
  }
}
