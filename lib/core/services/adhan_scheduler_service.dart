import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:sirat_i_nur/domain/entities/prayer_times_entity.dart';
import 'package:sirat_i_nur/core/services/prayer_calendar_service.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class AdhanSchedulerService {
  final FlutterLocalNotificationsPlugin _notifications =
      FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    tz.initializeTimeZones();
    const androidInit = AndroidInitializationSettings('@mipmap/ic_launcher');
    const darwinInit = DarwinInitializationSettings();
    const initSettings = InitializationSettings(
      android: androidInit,
      iOS: darwinInit,
    );
    await _notifications.initialize(settings: initSettings);
  }

  /// Proactive 30-Day Adhan Scheduling
  /// Hardened against OS battery optimizations.
  Future<void> scheduleAdhans(
    double lat,
    double lon,
    String method,
    String madhab, {
    String? timezoneName,
  }) async {
    // 1. Clear existing schedules to avoid duplicates
    await _notifications.cancelAll();

    final now = _nowForTimezone(timezoneName);
    for (int i = 0; i < 30; i++) {
      final date = now.add(Duration(days: i));
      final times = PrayerCalendarService.calculatePrayerTimes(
        latitude: lat,
        longitude: lon,
        date: date,
        method: method,
        madhab: madhab,
        timezone: timezoneName,
      );

      await _scheduleDailyEvents(times, i, timezoneName: timezoneName);
    }
  }

  Future<void> _scheduleDailyEvents(
    PrayerTimesEntity times,
    int dayIndex, {
    String? timezoneName,
  }) async {
    final dailyPrayers = {
      'Fajr': times.fajr,
      'Dhuhr': times.dhuhr,
      'Asr': times.asr,
      'Maghrib': times.maghrib,
      'Isha': times.isha,
    };

    int baseId = dayIndex * 10;
    final now = _nowForTimezone(timezoneName);
    final location = _resolveLocation(timezoneName);

    for (var entry in dailyPrayers.entries) {
      if (entry.value.isBefore(now)) continue;

      await _notifications.zonedSchedule(
        id: baseId++,
        title: 'Adhan: ${entry.key}',
        body: 'It is time for ${entry.key} prayer.',
        scheduledDate: tz.TZDateTime(
          location,
          entry.value.year,
          entry.value.month,
          entry.value.day,
          entry.value.hour,
          entry.value.minute,
          entry.value.second,
          entry.value.millisecond,
          entry.value.microsecond,
        ),
        notificationDetails: const NotificationDetails(
          android: AndroidNotificationDetails(
            'adhan_channel_high_precision',
            'Adhan Notifications',
            channelDescription: 'High precision Islamic prayer alerts',
            importance: Importance.max,
            priority: Priority.high,
            sound: RawResourceAndroidNotificationSound('adhan'),
            playSound: true,
          ),
          iOS: DarwinNotificationDetails(
            presentAlert: true,
            presentBadge: true,
            presentSound: true,
          ),
        ),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      );
    }
  }

  DateTime _nowForTimezone(String? timezoneName) {
    if (timezoneName == null || timezoneName.trim().isEmpty) {
      return DateTime.now();
    }

    try {
      final location = tz.getLocation(timezoneName);
      return tz.TZDateTime.now(location);
    } catch (_) {
      return DateTime.now();
    }
  }

  tz.Location _resolveLocation(String? timezoneName) {
    if (timezoneName == null || timezoneName.trim().isEmpty) {
      return tz.local;
    }

    try {
      return tz.getLocation(timezoneName);
    } catch (_) {
      return tz.local;
    }
  }
}
