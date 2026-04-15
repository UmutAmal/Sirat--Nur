import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:sirat_i_nur/core/utils/prayer_name_localization.dart';
import 'package:sirat_i_nur/domain/entities/prayer_times_entity.dart';
import 'package:sirat_i_nur/core/services/prayer_calendar_service.dart';
import 'package:timezone/data/latest.dart' as tzdata;
import 'package:sirat_i_nur/core/utils/timezone_utils.dart';

class AdhanSchedulerService {
  static const int _scheduleDays = 30;
  static const int _dailyPrayerCount = 5;
  static const int _notificationIdStride = 10;

  final FlutterLocalNotificationsPlugin _notifications =
      FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    tzdata.initializeTimeZones();
    const androidInit = AndroidInitializationSettings('@mipmap/ic_launcher');
    const darwinInit = DarwinInitializationSettings();
    const initSettings = InitializationSettings(
      android: androidInit,
      iOS: darwinInit,
    );
    await _notifications.initialize(settings: initSettings);
  }

  Future<void> requestPermissions() async {
    final androidPL = _notifications
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();
    if (androidPL != null) {
      await androidPL.requestNotificationsPermission();
    }

    final iOSPL = _notifications
        .resolvePlatformSpecificImplementation<
          IOSFlutterLocalNotificationsPlugin
        >();
    if (iOSPL != null) {
      await iOSPL.requestPermissions(alert: true, badge: true, sound: true);
    }
  }

  Future<void> clearScheduledAdhans() async {
    await _cancelScheduledAdhans();
  }

  /// Proactive 30-Day Adhan Scheduling
  /// Hardened against OS battery optimizations.
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
    // Clear only adhan schedules to avoid deleting unrelated notifications.
    await _cancelScheduledAdhans();

    final now = TimezoneUtils.nowForTimezone(timezoneName);
    for (int i = 0; i < _scheduleDays; i++) {
      final date = now.add(Duration(days: i));
      final times = PrayerCalendarService.calculatePrayerTimes(
        latitude: lat,
        longitude: lon,
        date: date,
        method: method,
        madhab: madhab,
        timezone: timezoneName,
        fajrAngle: fajrAngle,
        ishaAngle: ishaAngle,
      );

      await _scheduleDailyEvents(
        times,
        i,
        timezoneName: timezoneName,
        languageCode: languageCode,
      );
    }
  }

  Future<void> _cancelScheduledAdhans() async {
    for (int dayIndex = 0; dayIndex < _scheduleDays; dayIndex++) {
      for (
        int prayerIndex = 0;
        prayerIndex < _dailyPrayerCount;
        prayerIndex++
      ) {
        await _notifications.cancel(
          id: adhanNotificationId(dayIndex, prayerIndex),
        );
      }
    }
  }

  @visibleForTesting
  static int adhanNotificationId(int dayIndex, int prayerIndex) {
    return dayIndex * _notificationIdStride + prayerIndex;
  }

  Future<void> _scheduleDailyEvents(
    PrayerTimesEntity times,
    int dayIndex, {
    String? timezoneName,
    required String languageCode,
  }) async {
    final dailyPrayers = {
      'Fajr': times.fajr,
      'Dhuhr': times.dhuhr,
      'Asr': times.asr,
      'Maghrib': times.maghrib,
      'Isha': times.isha,
    };

    int prayerIndex = 0;
    final now = TimezoneUtils.nowForTimezone(timezoneName);
    final normalizedLanguageCode = languageCode.trim();

    for (var entry in dailyPrayers.entries) {
      if (entry.value.isBefore(now)) continue;

      final title = PrayerLocalizer.notificationTitle(
        entry.key,
        normalizedLanguageCode,
      );
      final body = PrayerLocalizer.notificationBody(
        entry.key,
        normalizedLanguageCode,
      );

      await _notifications.zonedSchedule(
        id: adhanNotificationId(dayIndex, prayerIndex++),
        title: title,
        body: body,
        scheduledDate: TimezoneUtils.toTZDateTime(entry.value, timezoneName),
        notificationDetails: NotificationDetails(
          android: AndroidNotificationDetails(
            'adhan_channel_high_precision',
            PrayerLocalizer.notificationChannelName(normalizedLanguageCode),
            channelDescription: PrayerLocalizer.notificationChannelDescription(
              normalizedLanguageCode,
            ),
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
}
