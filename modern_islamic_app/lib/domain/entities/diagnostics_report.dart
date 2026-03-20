import 'package:geolocator/geolocator.dart';
import 'package:sirat_i_nur/domain/entities/library_status.dart';
import 'package:sirat_i_nur/domain/entities/quran_db_status.dart';

class DiagnosticsReport {
  final DateTime generatedAt;
  final String appLocale;
  final String platformLocale;
  final String? settingsLanguageCode;
  final String calculationMethod;
  final String madhab;
  final String audioVoice;
  final String? locationName;
  final bool? locationServicesEnabled;
  final LocationPermission? locationPermission;
  final bool? notificationsEnabled;
  final QuranDbStatus? quranStatus;
  final String? quranError;
  final LibraryStatus? libraryStatus;
  final String? libraryError;

  DiagnosticsReport({
    required this.generatedAt,
    required this.appLocale,
    required this.platformLocale,
    required this.settingsLanguageCode,
    required this.calculationMethod,
    required this.madhab,
    required this.audioVoice,
    required this.locationName,
    required this.locationServicesEnabled,
    required this.locationPermission,
    required this.notificationsEnabled,
    required this.quranStatus,
    required this.quranError,
    required this.libraryStatus,
    required this.libraryError,
  });
}
