import 'package:sirat_i_nur/core/services/prayer_calendar_service.dart';
import 'package:sirat_i_nur/core/utils/timezone_utils.dart';
import 'package:sirat_i_nur/domain/entities/prayer_times_entity.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';

class PrayerWidgetSyncService {
  DateTime resolveReferenceNow(
    String? timezone, {
    DateTime Function(String? timezone)? nowResolver,
  }) {
    final resolveNow = nowResolver ?? TimezoneUtils.nowForTimezone;
    return resolveNow(timezone);
  }

  PrayerTimesEntity? buildPrayerTimesEntity(
    SettingsState settings, {
    DateTime Function(String? timezone)? nowResolver,
  }) {
    if (settings.latitude == null || settings.longitude == null) {
      return null;
    }

    final referenceNow = resolveReferenceNow(
      settings.timezone,
      nowResolver: nowResolver,
    );
    return PrayerCalendarService.calculatePrayerTimes(
      latitude: settings.latitude!,
      longitude: settings.longitude!,
      date: referenceNow,
      method: settings.calculationMethod,
      madhab: settings.madhab,
      timezone: settings.timezone,
      fajrAngle: settings.fajrAngle,
      ishaAngle: settings.ishaAngle,
      currentTime: referenceNow,
    );
  }
}
