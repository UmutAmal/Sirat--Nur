import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/calendar/calendar_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  test('CalendarPage localizes special day titles in Turkish', () {
    final tr = lookupAppLocalizations(const Locale('tr'));
    final importantDates = buildImportantDates(tr);

    expect(
      importantDates,
      contains(
        predicate<MapEntry<String, String>>(
          (entry) =>
              entry.key == tr.islamicNewYear &&
              entry.value == tr.specialDayDateIslamicNewYear,
        ),
      ),
    );
    expect(
      importantDates,
      contains(
        predicate<MapEntry<String, String>>(
          (entry) =>
              entry.key == tr.mawlidAnNabi &&
              entry.value == tr.specialDayDateMawlidAnNabi,
        ),
      ),
    );
  });

  test('CalendarPage uses corrected English special day titles', () {
    final en = lookupAppLocalizations(const Locale('en'));
    final importantDates = buildImportantDates(en);

    expect(
      importantDates,
      contains(
        predicate<MapEntry<String, String>>(
          (entry) =>
              entry.key == en.islamicNewYear &&
              entry.value == en.specialDayDateIslamicNewYear,
        ),
      ),
    );
    expect(
      importantDates,
      contains(
        predicate<MapEntry<String, String>>(
          (entry) =>
              entry.key == en.mawlidAnNabi &&
              entry.value == en.specialDayDateMawlidAnNabi,
        ),
      ),
    );
  });

  test('CalendarPage logs sanitized Hijri locale fallback', () {
    final source = File(
      'lib/features/calendar/calendar_page.dart',
    ).readAsStringSync();

    expect(
      source,
      contains("debugPrint('Hijri calendar locale fallback applied')"),
    );
    expect(source, contains("HijriCalendar.setLocal('en')"));
    expect(source, isNot(contains(r'Hijri calendar locale fallback: $error')));
  });
}
