import 'package:flutter/widgets.dart';
import 'package:home_widget/home_widget.dart';
import 'package:intl/intl.dart';
import 'package:sirat_i_nur/core/utils/prayer_name_localization.dart';
import 'package:sirat_i_nur/domain/entities/prayer_times_entity.dart';

class WidgetService {
  static final WidgetService _instance = WidgetService._internal();

  factory WidgetService() {
    return _instance;
  }

  WidgetService._internal();

  // App Group ID required for iOS
  static const String appGroupId = 'group.com.modernislamicapp.widget';
  
  // Widget identifiers mapping to Android/iOS native sides
  static const String androidWidgetName = 'PrayerWidgetProvider';
  static const String iOSWidgetName = 'PrayerWidget';
  
  // Additional widget names
  static const String androidAllPrayersWidgetName = 'AllPrayersWidgetProvider';
  static const String androidQiblaWidgetName = 'QiblaWidgetProvider';
  static const String androidAyahWidgetName = 'AyahWidgetProvider';

  Future<void> init() async {
    await HomeWidget.setAppGroupId(appGroupId);
  }

  /// Update the main prayer widget (next prayer only)
  Future<void> updatePrayerWidget(
    PrayerTimesEntity prayerTimes, {
    Locale? locale,
  }) async {
    final resolvedLocale = locale ?? WidgetsBinding.instance.platformDispatcher.locale;
    final timeFormat = DateFormat.Hm(resolvedLocale.toString());
    final nextPrayerName = PrayerLocalizer.localize(prayerTimes.nextPrayerName, resolvedLocale.languageCode);
    
    // Save data to HomeWidget preferences
    await HomeWidget.saveWidgetData<String>('next_prayer_name', nextPrayerName);
    await HomeWidget.saveWidgetData<String>('next_prayer_time', timeFormat.format(prayerTimes.nextPrayerTime));
    
    // Also save today's full schedule for more complex widgets
    await HomeWidget.saveWidgetData<String>('fajr_time', timeFormat.format(prayerTimes.fajr));
    await HomeWidget.saveWidgetData<String>('dhuhr_time', timeFormat.format(prayerTimes.dhuhr));
    await HomeWidget.saveWidgetData<String>('asr_time', timeFormat.format(prayerTimes.asr));
    await HomeWidget.saveWidgetData<String>('maghrib_time', timeFormat.format(prayerTimes.maghrib));
    await HomeWidget.saveWidgetData<String>('isha_time', timeFormat.format(prayerTimes.isha));

    // Tell the OS to update the widgets
    await HomeWidget.updateWidget(
      name: androidWidgetName,
      iOSName: iOSWidgetName,
    );
  }

  /// Update all prayers widget (shows all 5 prayer times)
  Future<void> updateAllPrayersWidget(
    PrayerTimesEntity prayerTimes, {
    Locale? locale,
  }) async {
    final resolvedLocale = locale ?? WidgetsBinding.instance.platformDispatcher.locale;
    final timeFormat = DateFormat.Hm(resolvedLocale.toString());
    
    // Save data for all prayers widget
    await HomeWidget.saveWidgetData<String>('fajr', timeFormat.format(prayerTimes.fajr));
    await HomeWidget.saveWidgetData<String>('dhuhr', timeFormat.format(prayerTimes.dhuhr));
    await HomeWidget.saveWidgetData<String>('asr', timeFormat.format(prayerTimes.asr));
    await HomeWidget.saveWidgetData<String>('maghrib', timeFormat.format(prayerTimes.maghrib));
    await HomeWidget.saveWidgetData<String>('isha', timeFormat.format(prayerTimes.isha));

    // Update the all prayers widget
    await HomeWidget.updateWidget(
      name: androidAllPrayersWidgetName,
    );
  }

  /// Update Qibla direction widget
  Future<void> updateQiblaWidget({
    required double direction,
    required String directionText,
  }) async {
    await HomeWidget.saveWidgetData<String>('qibla_direction', '${direction.toStringAsFixed(0)}°');
    await HomeWidget.saveWidgetData<String>('qibla_status', directionText);

    // Update the Qibla widget
    await HomeWidget.updateWidget(
      name: androidQiblaWidgetName,
    );
  }

  /// Update Ayah of the day widget
  Future<void> updateAyahWidget({
    required String arabic,
    required String translation,
    required String reference,
  }) async {
    await HomeWidget.saveWidgetData<String>('ayah_arabic', arabic);
    await HomeWidget.saveWidgetData<String>('ayah_translation', translation);
    await HomeWidget.saveWidgetData<String>('ayah_reference', reference);

    // Update the Ayah widget
    await HomeWidget.updateWidget(
      name: androidAyahWidgetName,
    );
  }

  /// Update all widgets at once
  Future<void> updateAllWidgets(
    PrayerTimesEntity prayerTimes, {
    Locale? locale,
    double? qiblaDirection,
    String? qiblaText,
    String? ayahArabic,
    String? ayahTranslation,
    String? ayahReference,
  }) async {
    // Update main prayer widget
    await updatePrayerWidget(prayerTimes, locale: locale);
    
    // Update all prayers widget
    await updateAllPrayersWidget(prayerTimes, locale: locale);
    
    // Update Qibla widget if direction is provided
    if (qiblaDirection != null && qiblaText != null) {
      await updateQiblaWidget(
        direction: qiblaDirection,
        directionText: qiblaText,
      );
    }
    
    // Update Ayah widget if data is provided
    if (ayahArabic != null && ayahTranslation != null && ayahReference != null) {
      await updateAyahWidget(
        arabic: ayahArabic,
        translation: ayahTranslation,
        reference: ayahReference,
      );
    }
  }
}
