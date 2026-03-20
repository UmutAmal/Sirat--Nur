import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sirat_i_nur/data/repositories/prayer_times_repository_impl.dart';
import 'package:sirat_i_nur/domain/entities/prayer_times_entity.dart';
import 'package:sirat_i_nur/domain/usecases/get_prayer_times.dart';
import 'package:sirat_i_nur/core/services/notification_service.dart';
import 'package:sirat_i_nur/core/services/widget_service.dart';
import 'package:sirat_i_nur/presentation/blocs/settings_provider.dart';

import 'package:sirat_i_nur/core/services/location_service.dart';

final prayerTimesRepositoryProvider = Provider((ref) {
  return PrayerTimesRepositoryImpl();
});

final getPrayerTimesUseCaseProvider = Provider((ref) {
  final repository = ref.watch(prayerTimesRepositoryProvider);
  return GetPrayerTimesUseCase(repository);
});

final locationProvider = FutureProvider<Position>((ref) async {
  return await LocationService.getCurrentPosition();
});

final prayerTimesProvider = FutureProvider<PrayerTimesEntity>((ref) async {
  final settings = ref.watch(settingsProvider);
  
  double latitude;
  double longitude;

  if (settings.latitude != null && settings.longitude != null) {
     latitude = settings.latitude!;
     longitude = settings.longitude!;
  } else {
     final position = await ref.watch(locationProvider.future);
     latitude = position.latitude;
     longitude = position.longitude;

     // Attempt to auto-detect and set the best calculation method silently
     await ref.read(settingsProvider.notifier).autoDetectCalculationMethod(
       latitude, 
       longitude
     );
  }

  final getPrayerTimes = ref.watch(getPrayerTimesUseCaseProvider);
  
  final times = await getPrayerTimes(
    latitude, 
    longitude, 
    settings.calculationMethod, 
    settings.madhab,
    fajrAngle: settings.fajrAngle,
    ishaAngle: settings.ishaAngle,
  );
  
  final notificationLocale = settings.languageCode != null
      ? Locale(settings.languageCode!)
      : WidgetsBinding.instance.platformDispatcher.locale;

  // Schedule alarms
  try {
    await NotificationService().schedulePrayerNotifications(times, locale: notificationLocale);
  } catch (e) {
    debugPrint('Error scheduling prayer notifications: $e');
  }
  
  // Sync calculation data with Native Mobile Widgets
  try {
    await WidgetService().updatePrayerWidget(times, locale: notificationLocale);
  } catch (e) {
    debugPrint('Error updating prayer widget: $e');
  }
  
  return times;
});
