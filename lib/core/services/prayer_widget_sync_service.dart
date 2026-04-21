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
    final latitude = settings.latitude;
    final longitude = settings.longitude;
    if (latitude == null ||
        longitude == null ||
        !hasValidLocationCoordinates(latitude, longitude)) {
      return null;
    }

    final resolvedTimezone = TimezoneUtils.resolveTimezoneName(
      timezoneName: settings.timezone,
      latitude: latitude,
      longitude: longitude,
    );
    final referenceNow = resolveReferenceNow(
      resolvedTimezone,
      nowResolver: nowResolver,
    );
    return PrayerCalendarService.calculatePrayerTimes(
      latitude: latitude,
      longitude: longitude,
      date: referenceNow,
      method: settings.calculationMethod,
      madhab: settings.madhab,
      timezone: resolvedTimezone,
      fajrAngle: settings.fajrAngle,
      ishaAngle: settings.ishaAngle,
      currentTime: referenceNow,
    );
  }
}
