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
  });
}
