import 'dart:io';
import 'dart:async';
import 'dart:collection';

import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/services/adhan_scheduler_service.dart';
import 'package:sirat_i_nur/core/services/prayer_notification_coordinator.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';

class FakeAdhanSchedulerService extends AdhanSchedulerService {
  int initCalls = 0;
  int permissionCalls = 0;
  int clearCalls = 0;
  int scheduleCalls = 0;

  double? lat;
  double? lon;
  String? method;
  String? madhab;
  String? timezoneName;
  String? languageCode;
  double? fajrAngle;
  double? ishaAngle;

  @override
  Future<void> init() async {
    initCalls++;
  }

  @override
  Future<void> requestPermissions() async {
    permissionCalls++;
  }

  @override
  Future<void> clearScheduledAdhans() async {
    clearCalls++;
  }

  @override
  Future<void> scheduleAdhans(
    double lat,
    double lon,
    String method,
    String madhab, {
    String? timezoneName,
    String languageCode = 'en',
    double? fajrAngle,
    double? ishaAngle,
  }) async {
    scheduleCalls++;
    this.lat = lat;
    this.lon = lon;
    this.method = method;
    this.madhab = madhab;
    this.timezoneName = timezoneName;
    this.languageCode = languageCode;
    this.fajrAngle = fajrAngle;
    this.ishaAngle = ishaAngle;
  }
}

class BlockingAdhanSchedulerService extends FakeAdhanSchedulerService {
  final Queue<Completer<void>> _preparedBlockers = Queue<Completer<void>>();
  final Queue<Completer<void>> _activeBlockers = Queue<Completer<void>>();
  final List<String> operations = <String>[];
  int concurrentOperations = 0;
  int maxConcurrentOperations = 0;

  void enqueueOperationBlocker() {
    _preparedBlockers.add(Completer<void>());
  }

  void releaseNextOperation() {
    if (_activeBlockers.isEmpty) {
      throw StateError('No blocked scheduler operation to release.');
    }
    _activeBlockers.removeFirst().complete();
  }

  Future<void> _runBlockedOperation(String operation) async {
    operations.add(operation);
    concurrentOperations++;
    if (concurrentOperations > maxConcurrentOperations) {
      maxConcurrentOperations = concurrentOperations;
    }

    final blocker = _preparedBlockers.isNotEmpty
        ? _preparedBlockers.removeFirst()
        : null;
    if (blocker != null) {
      _activeBlockers.add(blocker);
      await blocker.future;
    }

    concurrentOperations--;
  }

  @override
  Future<void> clearScheduledAdhans() async {
    clearCalls++;
    await _runBlockedOperation('clear');
  }

  @override
  Future<void> scheduleAdhans(
    double lat,
    double lon,
    String method,
    String madhab, {
    String? timezoneName,
    String languageCode = 'en',
    double? fajrAngle,
    double? ishaAngle,
  }) async {
    scheduleCalls++;
    this.lat = lat;
    this.lon = lon;
    this.method = method;
    this.madhab = madhab;
    this.timezoneName = timezoneName;
    this.languageCode = languageCode;
    this.fajrAngle = fajrAngle;
    this.ishaAngle = ishaAngle;
    await _runBlockedOperation('schedule:$lat,$lon');
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('PrayerNotificationCoordinator', () {
    test('clears schedules when location is missing', () async {
      final scheduler = FakeAdhanSchedulerService();
      final coordinator = PrayerNotificationCoordinator(scheduler: scheduler);

      await coordinator.sync(SettingsState());

      expect(scheduler.initCalls, 1);
      expect(scheduler.permissionCalls, 1);
      expect(scheduler.clearCalls, 1);
      expect(scheduler.scheduleCalls, 0);
    });

    test(
      'schedules adhans with location, timezone, language and angles',
      () async {
        final scheduler = FakeAdhanSchedulerService();
        final coordinator = PrayerNotificationCoordinator(scheduler: scheduler);
        final settings = SettingsState(
          calculationMethod: 'Egyptian',
          madhab: 'Shafii',
          languageCode: 'tr_TR',
          latitude: 41.0082,
          longitude: 28.9784,
          locationName: 'Istanbul, Turkey',
          timezone: 'Europe/Istanbul',
          fajrAngle: 15.0,
          ishaAngle: 14.0,
        );

        await coordinator.sync(settings);

        expect(scheduler.clearCalls, 0);
        expect(scheduler.scheduleCalls, 1);
        expect(scheduler.lat, 41.0082);
        expect(scheduler.lon, 28.9784);
        expect(scheduler.method, 'Egyptian');
        expect(scheduler.madhab, 'Shafii');
        expect(scheduler.timezoneName, 'Europe/Istanbul');
        expect(scheduler.languageCode, 'tr');
        expect(scheduler.fajrAngle, 15.0);
        expect(scheduler.ishaAngle, 14.0);
      },
    );

    test('does not reschedule identical settings twice', () async {
      final scheduler = FakeAdhanSchedulerService();
      final coordinator = PrayerNotificationCoordinator(scheduler: scheduler);
      final settings = SettingsState(
        latitude: 21.3891,
        longitude: 39.8579,
        locationName: 'Makkah, Saudi Arabia',
        timezone: 'Asia/Riyadh',
      );

      await coordinator.sync(settings);
      await coordinator.sync(settings);

      expect(scheduler.scheduleCalls, 1);
    });

    test('shouldResync ignores unrelated UI-only settings changes', () {
      final previous = SettingsState(
        latitude: 41.0082,
        longitude: 28.9784,
        locationName: 'Istanbul, Turkey',
        timezone: 'Europe/Istanbul',
      );
      final next = previous.copyWith(isDarkMode: false);

      expect(
        PrayerNotificationCoordinator.shouldResync(previous, next),
        isFalse,
      );
    });

    test(
      'serializes rapid location changes and keeps only the latest schedule',
      () async {
        final scheduler = BlockingAdhanSchedulerService()
          ..enqueueOperationBlocker()
          ..enqueueOperationBlocker();
        final coordinator = PrayerNotificationCoordinator(scheduler: scheduler);
        final firstSettings = SettingsState(
          latitude: 41.0082,
          longitude: 28.9784,
          locationName: 'Istanbul, Turkey',
          timezone: 'Europe/Istanbul',
        );
        final secondSettings = firstSettings.copyWith(
          latitude: 39.9334,
          longitude: 32.8597,
          locationName: 'Ankara, Turkey',
        );
        final thirdSettings = firstSettings.copyWith(
          latitude: 21.4225,
          longitude: 39.8262,
          locationName: 'Makkah, Saudi Arabia',
          timezone: 'Asia/Riyadh',
        );

        final firstSync = coordinator.sync(firstSettings);
        await Future<void>.delayed(Duration.zero);

        final secondSync = coordinator.sync(secondSettings);
        final thirdSync = coordinator.sync(thirdSettings);
        await Future<void>.delayed(Duration.zero);

        expect(scheduler.scheduleCalls, 1);
        expect(scheduler.maxConcurrentOperations, 1);

        scheduler.releaseNextOperation();
        await Future<void>.delayed(Duration.zero);

        expect(scheduler.scheduleCalls, 2);
        expect(scheduler.maxConcurrentOperations, 1);

        scheduler.releaseNextOperation();
        await Future.wait([firstSync, secondSync, thirdSync]);

        expect(scheduler.scheduleCalls, 2);
        expect(scheduler.clearCalls, 0);
        expect(scheduler.maxConcurrentOperations, 1);
        expect(scheduler.lat, 21.4225);
        expect(scheduler.lon, 39.8262);
        expect(scheduler.timezoneName, 'Asia/Riyadh');
        expect(scheduler.operations, <String>[
          'schedule:41.0082,28.9784',
          'schedule:21.4225,39.8262',
        ]);
      },
    );

    test(
      'applies queued location removal after an in-flight schedule finishes',
      () async {
        final scheduler = BlockingAdhanSchedulerService()
          ..enqueueOperationBlocker()
          ..enqueueOperationBlocker();
        final coordinator = PrayerNotificationCoordinator(scheduler: scheduler);
        final locatedSettings = SettingsState(
          latitude: 41.0082,
          longitude: 28.9784,
          locationName: 'Istanbul, Turkey',
          timezone: 'Europe/Istanbul',
        );

        final firstSync = coordinator.sync(locatedSettings);
        await Future<void>.delayed(Duration.zero);

        final secondSync = coordinator.sync(SettingsState());
        await Future<void>.delayed(Duration.zero);

        expect(scheduler.scheduleCalls, 1);
        expect(scheduler.clearCalls, 0);
        expect(scheduler.maxConcurrentOperations, 1);

        scheduler.releaseNextOperation();
        await Future<void>.delayed(Duration.zero);

        expect(scheduler.clearCalls, 1);
        expect(scheduler.maxConcurrentOperations, 1);

        scheduler.releaseNextOperation();
        await Future.wait([firstSync, secondSync]);

        expect(scheduler.scheduleCalls, 1);
        expect(scheduler.clearCalls, 1);
        expect(scheduler.maxConcurrentOperations, 1);
        expect(scheduler.operations, <String>[
          'schedule:41.0082,28.9784',
          'clear',
        ]);
      },
    );

    test('sync failure log does not include raw scheduler exceptions', () {
      final source = File(
        'lib/core/services/prayer_notification_coordinator.dart',
      ).readAsStringSync();

      expect(
        source,
        isNot(contains(r'Prayer notification sync failed: $error')),
      );
      expect(source, contains('Prayer notification sync failed'));
      expect(source, contains('debugPrintStack'));
    });
  });
}
