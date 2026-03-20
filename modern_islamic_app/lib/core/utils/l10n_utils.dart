import 'package:flutter/widgets.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

/// A global utility to handle translations with robust fallbacks.
/// If a key is missing in the current locale (e.g., an obscure language),
/// it will attempt to fallback to English or Turkish.
class L10n {
  static AppLocalizations of(BuildContext context) {
    return AppLocalizations.of(context)!;
  }

  /// Specialized helper for hardcoded strings or dynamic content.
  
  /// Helper to get a string from AppLocalizations with a safe check.
  /// Note: Flutter's generated AppLocalizations doesn't easily allow dynamic key access
  /// without reflection or massive switch statements, so we mostly use trEnGlobal
  /// for strings that might be missing in some ARB files but present in others.
}

/// Enhanced version of trEn that can be expanded for more languages if needed.
String trEnGlobal(
  BuildContext context, {
  required String tr,
  required String en,
}) {
  final locale = Localizations.localeOf(context);
  if (locale.languageCode == 'tr') return tr;
  // We default all other 180+ languages to English if not Turkish,
  // as English ARB is usually the most complete.
  return en;
}
