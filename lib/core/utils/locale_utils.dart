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
  if (!_isValidLanguageSubtag(languageCode)) {
    return null;
  }
  String? scriptCode;
  String? countryCode;

  for (final part in parts.skip(1)) {
    if (_isValidScriptSubtag(part) && scriptCode == null) {
      scriptCode = '${part[0].toUpperCase()}${part.substring(1).toLowerCase()}';
      continue;
    }
    if (_isValidRegionSubtag(part) && countryCode == null) {
      countryCode = part.length == 2 ? part.toUpperCase() : part;
      continue;
    }

    return null;
  }

  return Locale.fromSubtags(
    languageCode: languageCode,
    scriptCode: scriptCode,
    countryCode: countryCode,
  );
}

bool _isValidLanguageSubtag(String value) {
  return (value.length == 2 || value.length == 3) && _isAsciiLetters(value);
}

bool _isValidScriptSubtag(String value) {
  return value.length == 4 && _isAsciiLetters(value);
}

bool _isValidRegionSubtag(String value) {
  return (value.length == 2 && _isAsciiLetters(value)) ||
      (value.length == 3 && _isAsciiDigits(value));
}

bool _isAsciiLetters(String value) {
  for (final unit in value.codeUnits) {
    final isUpper = unit >= 0x41 && unit <= 0x5A;
    final isLower = unit >= 0x61 && unit <= 0x7A;
    if (!isUpper && !isLower) {
      return false;
    }
  }
  return value.isNotEmpty;
}

bool _isAsciiDigits(String value) {
  for (final unit in value.codeUnits) {
    if (unit < 0x30 || unit > 0x39) {
      return false;
    }
  }
  return value.isNotEmpty;
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
  final requestedCountry = requested.countryCode;
  if (requestedCountry != null && requestedCountry.isNotEmpty) {
    for (final candidate in supportedLocales) {
      if (candidate.languageCode == requested.languageCode &&
          candidate.countryCode == requestedCountry) {
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
