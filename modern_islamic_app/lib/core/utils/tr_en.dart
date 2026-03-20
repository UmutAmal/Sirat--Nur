import 'package:flutter/widgets.dart';

bool isTrLocale(BuildContext context) {
  return Localizations.localeOf(context).languageCode == 'tr';
}

String trEn(
  BuildContext context, {
  required String tr,
  required String en,
}) {
  return isTrLocale(context) ? tr : en;
}
