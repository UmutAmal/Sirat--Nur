import 'package:sirat_i_nur/domain/entities/prayer_times_entity.dart';
import 'package:sirat_i_nur/domain/repositories/prayer_times_repository.dart';

class GetPrayerTimesUseCase {
  final PrayerTimesRepository repository;

  GetPrayerTimesUseCase(this.repository);

  Future<PrayerTimesEntity> call(
    double latitude, 
    double longitude, 
    String method, 
    String madhab, {
    double? fajrAngle, 
    double? ishaAngle,
  }) async {
    return await repository.getPrayerTimes(
      latitude, 
      longitude, 
      method, 
      madhab, 
      fajrAngle: fajrAngle, 
      ishaAngle: ishaAngle,
    );
  }
}
