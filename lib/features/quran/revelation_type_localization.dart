import 'package:sirat_i_nur/l10n/app_localizations.dart';

String localizeRevelationTypeLabel(
  AppLocalizations l10n,
  String revelationType,
) {
  final normalized = revelationType.trim().toLowerCase();
  return switch (normalized) {
    'meccan' => l10n.revelationMeccan,
    'medinan' => l10n.revelationMedinan,
    _ => revelationType.trim(),
  };
}
