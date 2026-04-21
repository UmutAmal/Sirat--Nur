import 'package:flutter/widgets.dart';
import 'package:sirat_i_nur/core/services/adhan_scheduler_service.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';

class PrayerNotificationCoordinator {
  PrayerNotificationCoordinator({AdhanSchedulerService? scheduler})
    : _scheduler = scheduler ?? AdhanSchedulerService();

  final AdhanSchedulerService _scheduler;
  bool _isInitialized = false;
  String? _lastFingerprint;
  SettingsState? _queuedSettings;
  Future<void>? _activeSync;

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
    if (_activeSync == null &&
        _queuedSettings == null &&
        _lastFingerprint == fingerprint) {
      return;
    }
    _queuedSettings = settings;

    while (true) {
      final activeSync = _activeSync;
      if (activeSync == null) {
        final drainFuture = _drainQueuedSyncs();
        _activeSync = drainFuture;
        try {
          await drainFuture;
        } finally {
          if (identical(_activeSync, drainFuture)) {
            _activeSync = null;
          }
        }
      } else {
        await activeSync;
      }

      if (_queuedSettings == null) {
        return;
      }
    }
  }

  Future<void> _drainQueuedSyncs() async {
    while (true) {
      final settings = _queuedSettings;
      if (settings == null) {
        return;
      }

      _queuedSettings = null;
      final fingerprint = settingsFingerprint(settings);
      if (_lastFingerprint == fingerprint) {
        continue;
      }

      try {
        final latitude = settings.latitude;
        final longitude = settings.longitude;
        if (latitude == null ||
            longitude == null ||
            !hasValidLocationCoordinates(latitude, longitude)) {
          await _scheduler.clearScheduledAdhans();
        } else {
          await _scheduler.scheduleAdhans(
            latitude,
            longitude,
            settings.calculationMethod,
            settings.madhab,
            timezoneName: settings.timezone,
            languageCode: _resolveLanguageCode(settings.languageCode),
            fajrAngle: settings.fajrAngle,
            ishaAngle: settings.ishaAngle,
          );
        }
        _lastFingerprint = fingerprint;
      } catch (_) {
        debugPrint('Prayer notification sync failed');
      }
    }
  }

  static bool shouldResync(SettingsState? previous, SettingsState next) {
    return settingsFingerprint(previous) != settingsFingerprint(next);
  }

  @visibleForTesting
  static String settingsFingerprint(SettingsState? settings) {
    if (settings == null) return 'null';
    final latitude = settings.latitude;
    final longitude = settings.longitude;
    final latitudeFingerprint =
        latitude != null &&
            longitude != null &&
            hasValidLocationCoordinates(latitude, longitude)
        ? latitude.toStringAsFixed(6)
        : 'null';
    final longitudeFingerprint =
        latitude != null &&
            longitude != null &&
            hasValidLocationCoordinates(latitude, longitude)
        ? longitude.toStringAsFixed(6)
        : 'null';

    return [
      latitudeFingerprint,
      longitudeFingerprint,
      settings.calculationMethod,
      settings.madhab,
      settings.timezone ?? 'null',
      settings.fajrAngle.toStringAsFixed(2),
      settings.ishaAngle.toStringAsFixed(2),
      _resolveLanguageCode(settings.languageCode),
    ].join('|');
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
