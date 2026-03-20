import 'package:flutter/widgets.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

Locale _safeLocale(Locale locale) {
  try {
    lookupAppLocalizations(locale);
    return locale;
  } catch (_) {
    return const Locale('en');
  }
}

String localizePrayerName(String rawName, Locale locale) {
  final normalized = rawName.trim().toLowerCase();
  final l10n = lookupAppLocalizations(_safeLocale(locale));

  switch (normalized) {
    case 'fajr':
      return l10n.fajr;
    case 'sunrise':
      return l10n.sunrise;
    case 'dhuhr':
    case 'zuhr':
      return l10n.dhuhr;
    case 'asr':
      return l10n.asr;
    case 'maghrib':
      return l10n.maghrib;
    case 'isha':
      return l10n.isha;
    default:
      return rawName;
  }
}
