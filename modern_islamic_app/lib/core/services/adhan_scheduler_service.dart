import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:sirat_i_nur/domain/entities/prayer_times_entity.dart';
import 'package:sirat_i_nur/core/services/prayer_calendar_service.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class AdhanSchedulerService {
  final FlutterLocalNotificationsPlugin _notifications = FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    tz.initializeTimeZones();
    const androidInit = AndroidInitializationSettings('@mipmap/ic_launcher');
    const darwinInit = DarwinInitializationSettings();
    const initSettings = InitializationSettings(
      android: androidInit,
      iOS: darwinInit,
    );
    await _notifications.initialize(
      settings: initSettings,
    );
  }

  /// Proactive 30-Day Adhan Scheduling
  /// Hardened against OS battery optimizations.
  Future<void> scheduleAdhans(double lat, double lon, String method, String madhab) async {
    // 1. Clear existing schedules to avoid duplicates
    await _notifications.cancelAll();

    final now = DateTime.now();
    for (int i = 0; i < 30; i++) {
      final date = now.add(Duration(days: i));
      final times = PrayerCalendarService.calculatePrayerTimes(
        latitude: lat,
        longitude: lon,
        date: date,
        method: method,
        madhab: madhab,
      );

      await _scheduleDailyEvents(times, i);
    }
  }

  Future<void> _scheduleDailyEvents(PrayerTimesEntity times, int dayIndex) async {
    final dailyPrayers = {
      'Fajr': times.fajr,
      'Dhuhr': times.dhuhr,
      'Asr': times.asr,
      'Maghrib': times.maghrib,
      'Isha': times.isha,
    };

    int baseId = dayIndex * 10;
    
    for (var entry in dailyPrayers.entries) {
      if (entry.value.isBefore(DateTime.now())) continue;

      await _notifications.zonedSchedule(
        id: baseId++,
        title: 'Adhan: ${entry.key}',
        body: 'It is time for ${entry.key} prayer.',
        scheduledDate: tz.TZDateTime.from(entry.value, tz.local),
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
            sound: 'adhan.aiff',
            presentAlert: true,
            presentBadge: true,
            presentSound: true,
          ),
        ),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      );
    }
  }
}
