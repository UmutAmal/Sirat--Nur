import 'package:freezed_annotation/freezed_annotation.dart';

part 'prayer_times_entity.freezed.dart';

@freezed
class PrayerTimesEntity with _$PrayerTimesEntity {
  const factory PrayerTimesEntity({
    required DateTime fajr,
    required DateTime sunrise,
    required DateTime dhuhr,
    required DateTime asr,
    required DateTime maghrib,
    required DateTime isha,
    required String nextPrayerName,
    required DateTime nextPrayerTime,
  }) = _PrayerTimesEntity;
}
