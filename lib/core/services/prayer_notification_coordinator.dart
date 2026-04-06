import 'package:flutter/widgets.dart';
import 'package:sirat_i_nur/core/services/adhan_scheduler_service.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';

class PrayerNotificationCoordinator {
  PrayerNotificationCoordinator({AdhanSchedulerService? scheduler})
    : _scheduler = scheduler ?? AdhanSchedulerService();

  final AdhanSchedulerService _scheduler;
  bool _isInitialized = false;
  String? _lastFingerprint;

  Future<void> init() async {
    if (_isInitialized) return;

    await _scheduler.init();
    await _scheduler.requestPermissions();
    _isInitialized = true;
  }

  Future<void> sync(SettingsState settings) async {
    if (!_isInitialized) {
      await init();
    }

    final fingerprint = settingsFingerprint(settings);
    if (_lastFingerprint == fingerprint) return;

    try {
      if (!_hasLocation(settings)) {
        await _scheduler.clearScheduledAdhans();
      } else {
        await _scheduler.scheduleAdhans(
          settings.latitude!,
          settings.longitude!,
          settings.calculationMethod,
          settings.madhab,
          timezoneName: settings.timezone,
          languageCode: _resolveLanguageCode(settings.languageCode),
          fajrAngle: settings.fajrAngle,
          ishaAngle: settings.ishaAngle,
        );
      }
      _lastFingerprint = fingerprint;
    } catch (error, stackTrace) {
      debugPrint('Prayer notification sync failed: $error');
      debugPrintStack(stackTrace: stackTrace);
    }
  }

  static bool shouldResync(SettingsState? previous, SettingsState next) {
    return settingsFingerprint(previous) != settingsFingerprint(next);
  }

  @visibleForTesting
  static String settingsFingerprint(SettingsState? settings) {
    if (settings == null) return 'null';

    return [
      settings.latitude?.toStringAsFixed(6) ?? 'null',
      settings.longitude?.toStringAsFixed(6) ?? 'null',
      settings.calculationMethod,
      settings.madhab,
      settings.timezone ?? 'null',
      settings.fajrAngle.toStringAsFixed(2),
      settings.ishaAngle.toStringAsFixed(2),
      _resolveLanguageCode(settings.languageCode),
    ].join('|');
  }

  static bool _hasLocation(SettingsState settings) {
    return settings.latitude != null && settings.longitude != null;
  }

  static String _resolveLanguageCode(String? languageCode) {
    final normalized = languageCode?.trim();
    if (normalized != null && normalized.isNotEmpty) {
      return normalized.split(RegExp(r'[-_]')).first.toLowerCase();
    }

    final platformCode = WidgetsBinding
        .instance
        .platformDispatcher
        .locale
        .languageCode
        .trim();
    if (platformCode.isEmpty) return 'en';
    return platformCode.toLowerCase();
  }
}
