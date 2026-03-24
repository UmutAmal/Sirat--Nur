import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:sirat_i_nur/core/utils/prayer_name_localization.dart';
import 'package:sirat_i_nur/domain/entities/prayer_times_entity.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotificationService {
  static final NotificationService _instance = NotificationService._internal();

  factory NotificationService() {
    return _instance;
  }

  NotificationService._internal();

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    tz.initializeTimeZones();

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings(
          '@drawable/ic_notification_icon',
        ); // Custom notification icon

    const DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings(
          requestSoundPermission: true,
          requestBadgePermission: true,
          requestAlertPermission: true,
        );

    const InitializationSettings initializationSettings =
        InitializationSettings(
          android: initializationSettingsAndroid,
          iOS: initializationSettingsDarwin,
        );

    await flutterLocalNotificationsPlugin.initialize(
      settings: initializationSettings,
      onDidReceiveNotificationResponse: (NotificationResponse response) async {
        // Handle notification tapped
      },
    );
  }

  Future<void> requestPermissions() async {
    final androidPL = flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();
    if (androidPL != null) {
      await androidPL.requestNotificationsPermission();
    }

    final iOSPL = flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
          IOSFlutterLocalNotificationsPlugin
        >();
    if (iOSPL != null) {
      await iOSPL.requestPermissions(alert: true, badge: true, sound: true);
    }
  }

  Future<void> schedulePrayerNotifications(
    PrayerTimesEntity todayTimes, {
    Locale? locale,
    String? timezoneName,
  }) async {
    // Cancel previous notifications to avoid duplicates over days
    await flutterLocalNotificationsPlugin.cancelAll();

    final location = _resolveLocation(timezoneName);
    final now = tz.TZDateTime.now(location);
    final resolvedLocale =
        locale ?? WidgetsBinding.instance.platformDispatcher.locale;
    final isTr = resolvedLocale.languageCode == 'tr';

    // Mapping prayer times
    final prayerMap = {
      'Fajr': todayTimes.fajr,
      'Sunrise': todayTimes.sunrise,
      'Dhuhr': todayTimes.dhuhr,
      'Asr': todayTimes.asr,
      'Maghrib': todayTimes.maghrib,
      'Isha': todayTimes.isha,
    };

    int id = 0;
    for (var entry in prayerMap.entries) {
      final localizedName = PrayerLocalizer.localize(
        entry.key,
        resolvedLocale.languageCode,
      );
      final title = isTr ? '$localizedName Vakti' : 'Time for $localizedName';
      final body = isTr
          ? '$localizedName vakti geldi.'
          : 'It is time to pray $localizedName.';
      // Don't schedule if it's already in the past, or if it's sunrise (no adhan for sunrise usually, but we can remind)
      if (entry.key != 'Sunrise' && entry.value.isAfter(now)) {
        await _scheduleNotification(
          id: id++,
          title: title,
          body: body,
          scheduledTime: entry.value,
          timezoneName: timezoneName,
        );
      }
    }
  }

  Future<void> _scheduleNotification({
    required int id,
    required String title,
    required String body,
    required DateTime scheduledTime,
    String? timezoneName,
  }) async {
    final location = _resolveLocation(timezoneName);
    final zonedScheduleTime = tz.TZDateTime(
      location,
      scheduledTime.year,
      scheduledTime.month,
      scheduledTime.day,
      scheduledTime.hour,
      scheduledTime.minute,
      scheduledTime.second,
      scheduledTime.millisecond,
      scheduledTime.microsecond,
    );

    await flutterLocalNotificationsPlugin.zonedSchedule(
      id: id,
      title: title,
      body: body,
      scheduledDate: zonedScheduleTime,
      notificationDetails: NotificationDetails(
        android: AndroidNotificationDetails(
          'adhan_channel',
          'Adhan Notifications',
          channelDescription: 'Notifications for daily prayer times',
          importance: Importance.max,
          priority: Priority.high,
          sound: RawResourceAndroidNotificationSound('adhan'),
          // Small icon for notification bar
          icon: '@drawable/ic_notification_icon',
          // Large icon for expanded notification
          largeIcon: const DrawableResourceAndroidBitmap(
            'ic_notification_icon',
          ),
          // play sound
          playSound: true,
        ),
        iOS: DarwinNotificationDetails(
          presentSound: true,
          presentAlert: true,
          presentBadge: true,
        ),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    );
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
