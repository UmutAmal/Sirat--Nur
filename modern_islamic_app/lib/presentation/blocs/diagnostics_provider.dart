import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sirat_i_nur/core/services/notification_service.dart';
import 'package:sirat_i_nur/domain/entities/diagnostics_report.dart';
import 'package:sirat_i_nur/presentation/blocs/library_provider.dart';
import 'package:sirat_i_nur/presentation/blocs/quran_provider.dart';
import 'package:sirat_i_nur/presentation/blocs/settings_provider.dart';

final diagnosticsProvider = FutureProvider<DiagnosticsReport>((ref) async {
  final settings = ref.watch(settingsProvider);

  String? quranError;
  String? libraryError;

  final quranStatus = await _safeRead(
    ref.read(quranStatusProvider.future),
    onError: (err) => quranError = err,
  );
  final libraryStatus = await _safeRead(
    ref.read(libraryStatusProvider.future),
    onError: (err) => libraryError = err,
  );

  bool? locationServicesEnabled;
  LocationPermission? locationPermission;
  try {
    locationServicesEnabled = await Geolocator.isLocationServiceEnabled();
    locationPermission = await Geolocator.checkPermission();
  } catch (_) {
    locationServicesEnabled = null;
    locationPermission = null;
  }

  bool? notificationsEnabled;
  try {
    final android = NotificationService()
        .flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
    if (android != null) {
      notificationsEnabled = await android.areNotificationsEnabled();
    }
  } catch (_) {
    notificationsEnabled = null;
  }

  final platformLocale = WidgetsBinding.instance.platformDispatcher.locale;
  final appLocale = settings.languageCode != null
      ? Locale(settings.languageCode!)
      : platformLocale;

  return DiagnosticsReport(
    generatedAt: DateTime.now(),
    appLocale: appLocale.toString(),
    platformLocale: platformLocale.toString(),
    settingsLanguageCode: settings.languageCode,
    calculationMethod: settings.calculationMethod,
    madhab: settings.madhab,
    audioVoice: settings.audioVoice,
    locationName: settings.locationName,
    locationServicesEnabled: locationServicesEnabled,
    locationPermission: locationPermission,
    notificationsEnabled: notificationsEnabled,
    quranStatus: quranStatus,
    quranError: quranError,
    libraryStatus: libraryStatus,
    libraryError: libraryError,
  );
});

Future<T?> _safeRead<T>(
  Future<T> future, {
  required void Function(String error) onError,
}) async {
  try {
    return await future;
  } catch (e) {
    onError(e.toString());
    return null;
  }
}
