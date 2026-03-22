import 'package:flutter/material.dart';

Locale? parseLocaleCode(String? rawCode) {
  if (rawCode == null) return null;
  final trimmed = rawCode.trim();
  if (trimmed.isEmpty) return null;

  final parts = trimmed
      .replaceAll('-', '_')
      .split('_')
      .where((part) => part.isNotEmpty)
      .toList();
  if (parts.isEmpty) return null;

  final languageCode = parts.first.toLowerCase();
  String? scriptCode;
  String? countryCode;

  for (final part in parts.skip(1)) {
    if (part.length == 4 && scriptCode == null) {
      scriptCode = '${part[0].toUpperCase()}${part.substring(1).toLowerCase()}';
      continue;
    }
    if ((part.length == 2 || part.length == 3) && countryCode == null) {
      countryCode = part.toUpperCase();
    }
  }

  return Locale.fromSubtags(
    languageCode: languageCode,
    scriptCode: scriptCode,
    countryCode: countryCode,
  );
}

String localeKey(Locale locale) {
  final script = locale.scriptCode;
  final country = locale.countryCode;

  if (script != null && script.isNotEmpty) {
    return '${locale.languageCode}_$script${country != null && country.isNotEmpty ? '_$country' : ''}';
  }
  if (country != null && country.isNotEmpty) {
    return '${locale.languageCode}_$country';
  }
  return locale.languageCode;
}

Locale resolveSupportedLocale(
  Locale? requested,
  List<Locale> supportedLocales,
) {
  if (supportedLocales.isEmpty) return const Locale('en');

  if (requested == null) return supportedLocales.first;

  // First pass: exact match (language + optional script + optional region).
  for (final candidate in supportedLocales) {
    if (candidate.languageCode == requested.languageCode &&
        candidate.scriptCode == requested.scriptCode &&
        candidate.countryCode == requested.countryCode) {
      return candidate;
    }
  }

  // Second pass: language + region (ignoring script).
  if (requested.countryCode != null && requested.countryCode!.isNotEmpty) {
    for (final candidate in supportedLocales) {
      if (candidate.languageCode == requested.languageCode &&
          candidate.countryCode == requested.countryCode) {
        return candidate;
      }
    }
  }

  // Third pass: language only.
  for (final candidate in supportedLocales) {
    if (candidate.languageCode == requested.languageCode) {
      return candidate;
    }
  }

  return supportedLocales.first;
}
