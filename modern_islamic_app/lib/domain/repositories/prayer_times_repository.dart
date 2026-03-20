import 'package:sirat_i_nur/domain/entities/prayer_times_entity.dart';

abstract class PrayerTimesRepository {
  Future<PrayerTimesEntity> getPrayerTimes(
    double latitude, 
    double longitude, 
    String method, 
    String madhab, {
    double? fajrAngle, 
    double? ishaAngle,
  });
}
