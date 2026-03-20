import 'package:adhan/adhan.dart';
import 'package:sirat_i_nur/domain/entities/prayer_times_entity.dart';
import 'package:sirat_i_nur/domain/repositories/prayer_times_repository.dart';

class PrayerTimesRepositoryImpl implements PrayerTimesRepository {
  @override
  Future<PrayerTimesEntity> getPrayerTimes(
    double latitude, 
    double longitude, 
    String method, 
    String madhabParam, {
    double? fajrAngle, 
    double? ishaAngle,
  }) async {
    final coordinates = Coordinates(latitude, longitude);
    
    CalculationParameters params;
    
    switch (method) {
      case 'Custom':
        params = CalculationParameters(fajrAngle: fajrAngle ?? 18.0, ishaAngle: ishaAngle ?? 17.0);
        break;
      case 'Muslim World League':
        params = CalculationMethod.muslim_world_league.getParameters();
        break;
      case 'Egyptian':
        params = CalculationMethod.egyptian.getParameters();
        break;
      case 'Karachi':
        params = CalculationMethod.karachi.getParameters();
        break;
      case 'Umm Al-Qura':
        params = CalculationMethod.umm_al_qura.getParameters();
        break;
      case 'Dubai':
        params = CalculationMethod.dubai.getParameters();
        break;
      case 'Moonsighting Committee':
        params = CalculationMethod.moon_sighting_committee.getParameters();
        break;
      case 'North America (ISNA)':
        params = CalculationMethod.north_america.getParameters();
        break;
      case 'Kuwait':
        params = CalculationMethod.kuwait.getParameters();
        break;
      case 'Qatar':
        params = CalculationMethod.qatar.getParameters();
        break;
      case 'Singapore':
      case 'JAKIM (Malaysia)':
      case 'KEMENAG (Indonesia)':
        params = CalculationMethod.singapore.getParameters();
        break;
      case 'Turkey':
      case 'Diyanet':
        params = CalculationMethod.turkey.getParameters();
        break;
      case 'Tehran':
        params = CalculationMethod.tehran.getParameters();
        break;
      case 'Morocco':
        params = CalculationMethod.muslim_world_league.getParameters();
        break;
      default:
        params = CalculationMethod.muslim_world_league.getParameters();
        break;
    }
    
    if (madhabParam == 'Shafii' || madhabParam == 'Maliki' || madhabParam == 'Hanbali') {
       params.madhab = Madhab.shafi;
    } else {
       params.madhab = Madhab.hanafi;
    }

    final date = DateComponents.from(DateTime.now());
    final prayerTimes = PrayerTimes(coordinates, date, params);

    return PrayerTimesEntity(
      fajr: prayerTimes.fajr,
      sunrise: prayerTimes.sunrise,
      dhuhr: prayerTimes.dhuhr,
      asr: prayerTimes.asr,
      maghrib: prayerTimes.maghrib,
      isha: prayerTimes.isha,
      nextPrayerName: prayerTimes.nextPrayer().name,
      nextPrayerTime: prayerTimes.timeForPrayer(prayerTimes.nextPrayer()) ?? DateTime.now(),
    );
  }
}
