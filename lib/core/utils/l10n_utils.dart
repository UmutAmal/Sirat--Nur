import 'package:flutter/material.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

/// Helper to get localized text with TR/EN fallback
String trEn(BuildContext context, {required String tr, required String en}) {
  final locale = Localizations.localeOf(context);
  if (locale.languageCode == 'tr') return tr;
  return en;
}

/// Get AppLocalizations instance
AppLocalizations l10n(BuildContext context) {
  return AppLocalizations.of(context)!;
}
