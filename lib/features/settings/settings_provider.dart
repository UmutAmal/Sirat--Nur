import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/core/services/prayer_profile_service.dart';
import 'package:sirat_i_nur/core/utils/timezone_utils.dart';

const String kSharedPreferencesProviderNotBootstrappedErrorCode =
    'shared_preferences_provider_not_bootstrapped';

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw StateError(kSharedPreferencesProviderNotBootstrappedErrorCode);
});

const misharyAlafasyVoice = 'mishary_alafasy';
const abdulBasetVoice = 'abdul_baset';
const sudaisVoice = 'sudais';

const selectableAudioVoices = [
  misharyAlafasyVoice,
  abdulBasetVoice,
  sudaisVoice,
];

String normalizeAudioVoice(String voice) {
  final normalized = voice.trim().toLowerCase();
  switch (normalized) {
    case misharyAlafasyVoice:
    case 'male (mishary alafasy)':
    case 'mishary alafasy':
    case 'mishary rashid alafasy':
      return misharyAlafasyVoice;
    case abdulBasetVoice:
    case 'male (abdulbaset)':
    case 'male (abdul basit)':
    case 'abdulbaset':
    case 'abdul baset':
    case 'abdul basit':
      return abdulBasetVoice;
    case sudaisVoice:
    case 'male (sudais)':
      return sudaisVoice;
    default:
      return misharyAlafasyVoice;
  }
}

bool isValidLatitude(double? latitude) {
  return latitude != null &&
      latitude.isFinite &&
      latitude >= -90.0 &&
      latitude <= 90.0;
}

bool isValidLongitude(double? longitude) {
  return longitude != null &&
      longitude.isFinite &&
      longitude >= -180.0 &&
      longitude <= 180.0;
}

bool hasValidLocationCoordinates(double? latitude, double? longitude) {
  return isValidLatitude(latitude) && isValidLongitude(longitude);
}

void _assertValidLocationCoordinates(double latitude, double longitude) {
  if (!isValidLatitude(latitude)) {
    throw ArgumentError.value(
      latitude,
      'latitude',
      'Latitude must be finite and between -90 and 90 degrees.',
    );
  }

  if (!isValidLongitude(longitude)) {
    throw ArgumentError.value(
      longitude,
      'longitude',
      'Longitude must be finite and between -180 and 180 degrees.',
    );
  }
}

class SettingsState {
  final String calculationMethod;
  final String madhab;
  final String audioVoice;
  final double qiblaOffset;
  final bool qiblaSmoothingEnabled;
  final double fajrAngle;
  final double ishaAngle;
  final String? languageCode;
  final double? latitude;
  final double? longitude;
  final String? locationName;
  final String? countryCode;
  final String? timezone;
  final bool isDarkMode;

  SettingsState({
    this.calculationMethod = diyanetPrayerMethod,
    this.madhab = hanafiMadhab,
    this.audioVoice = misharyAlafasyVoice,
    this.qiblaOffset = 0.0,
    this.qiblaSmoothingEnabled = true,
    this.fajrAngle = 18.0,
    this.ishaAngle = 17.0,
    this.languageCode,
    this.latitude,
    this.longitude,
    this.locationName,
    this.countryCode,
    this.timezone,
    this.isDarkMode = true,
  });

  SettingsState copyWith({
    String? calculationMethod,
    String? madhab,
    String? audioVoice,
    double? qiblaOffset,
    bool? qiblaSmoothingEnabled,
    double? fajrAngle,
    double? ishaAngle,
    Object? languageCode = _unset,
    Object? latitude = _unset,
    Object? longitude = _unset,
    Object? locationName = _unset,
    Object? countryCode = _unset,
    Object? timezone = _unset,
    bool? isDarkMode,
  }) {
    return SettingsState(
      calculationMethod: calculationMethod ?? this.calculationMethod,
      madhab: madhab ?? this.madhab,
      audioVoice: audioVoice ?? this.audioVoice,
      qiblaOffset: qiblaOffset ?? this.qiblaOffset,
      qiblaSmoothingEnabled:
          qiblaSmoothingEnabled ?? this.qiblaSmoothingEnabled,
      fajrAngle: fajrAngle ?? this.fajrAngle,
      ishaAngle: ishaAngle ?? this.ishaAngle,
      languageCode: identical(languageCode, _unset)
          ? this.languageCode
          : languageCode as String?,
      latitude: identical(latitude, _unset)
          ? this.latitude
          : latitude as double?,
      longitude: identical(longitude, _unset)
          ? this.longitude
          : longitude as double?,
      locationName: identical(locationName, _unset)
          ? this.locationName
          : locationName as String?,
      countryCode: identical(countryCode, _unset)
          ? this.countryCode
          : countryCode as String?,
      timezone: identical(timezone, _unset)
          ? this.timezone
          : timezone as String?,
      isDarkMode: isDarkMode ?? this.isDarkMode,
    );
  }
}

const Object _unset = Object();

class SettingsNotifier extends StateNotifier<SettingsState> {
  final SharedPreferences _prefs;

  SettingsNotifier(this._prefs) : super(_loadSettingsState(_prefs)) {
    _repairStoredLocation();
    _repairStoredTimezone();
  }

  void _repairStoredLocation() {
    final storedLatitude = _prefs.getDouble('latitude');
    final storedLongitude = _prefs.getDouble('longitude');
    final hasAnyStoredLocation =
        storedLatitude != null ||
        storedLongitude != null ||
        _prefs.getString('locationName') != null ||
        _prefs.getString('countryCode') != null ||
        _prefs.getString('timezone') != null;

    if (!hasAnyStoredLocation ||
        hasValidLocationCoordinates(storedLatitude, storedLongitude)) {
      return;
    }

    unawaited(_prefs.remove('latitude'));
    unawaited(_prefs.remove('longitude'));
    unawaited(_prefs.remove('locationName'));
    unawaited(_prefs.remove('countryCode'));
    unawaited(_prefs.remove('timezone'));
  }

  void _repairStoredTimezone() {
    final storedTimezone = _prefs.getString('timezone');
    final resolvedTimezone = state.timezone;

    if (resolvedTimezone == null) {
      if (storedTimezone != null) {
        unawaited(_prefs.remove('timezone'));
      }
      return;
    }

    if (storedTimezone != resolvedTimezone) {
      unawaited(_prefs.setString('timezone', resolvedTimezone));
    }
  }

  Future<void> updateCalculationMethod(String method) async {
    final normalizedMethod = normalizeCalculationMethod(method);
    final (fajrAngle, ishaAngle) = _defaultAnglesForMethod(normalizedMethod);
    final defaultMadhab = normalizedMethod == customPrayerMethod
        ? state.madhab
        : profileForMethod(normalizedMethod).madhab;
    await _prefs.setString('calculationMethod', normalizedMethod);
    await _prefs.setString('madhab', defaultMadhab);
    await _prefs.setDouble('fajrAngle', fajrAngle);
    await _prefs.setDouble('ishaAngle', ishaAngle);
    state = state.copyWith(
      calculationMethod: normalizedMethod,
      madhab: defaultMadhab,
      fajrAngle: fajrAngle,
      ishaAngle: ishaAngle,
    );
  }

  Future<void> updateMadhab(String madhab) async {
    final normalizedMadhab = normalizeMadhab(madhab);
    await _prefs.setString('madhab', normalizedMadhab);
    state = state.copyWith(madhab: normalizedMadhab);
  }

  Future<void> updateAudioVoice(String voice) async {
    final normalizedVoice = normalizeAudioVoice(voice);
    await _prefs.setString('audioVoice', normalizedVoice);
    state = state.copyWith(audioVoice: normalizedVoice);
  }

  Future<void> updateQiblaOffset(double offset) async {
    await _prefs.setDouble('qiblaOffset', offset);
    state = state.copyWith(qiblaOffset: offset);
  }

  Future<void> toggleQiblaSmoothing(bool enabled) async {
    await _prefs.setBool('qiblaSmoothingEnabled', enabled);
    state = state.copyWith(qiblaSmoothingEnabled: enabled);
  }

  Future<void> updateCustomAngles(double fajr, double isha) async {
    await _prefs.setString('calculationMethod', customPrayerMethod);
    await _prefs.setDouble('fajrAngle', fajr);
    await _prefs.setDouble('ishaAngle', isha);
    state = state.copyWith(
      calculationMethod: customPrayerMethod,
      fajrAngle: fajr,
      ishaAngle: isha,
    );
  }

  Future<void> updateLanguage(String? langCode) async {
    final normalized = langCode?.trim().replaceAll('-', '_');
    if (normalized == null || normalized.isEmpty) {
      await _prefs.remove('languageCode');
      state = state.copyWith(languageCode: null);
    } else {
      await _prefs.setString('languageCode', normalized);
      state = state.copyWith(languageCode: normalized);
    }
  }

  Future<void> updateLocation(
    double lat,
    double lng,
    String name, {
    String? timezone,
    String? countryCode,
  }) async {
    _assertValidLocationCoordinates(lat, lng);
    final normalizedName = name.trim();
    if (normalizedName.isEmpty) {
      throw ArgumentError.value(
        name,
        'name',
        'Location name must not be empty.',
      );
    }

    final normalizedCountryCode = _normalizeOptionalCountryCode(countryCode);
    final normalizedTimezone = TimezoneUtils.resolveTimezoneName(
      timezoneName: timezone,
      latitude: lat,
      longitude: lng,
    );
    final profile = resolvePrayerProfile(
      countryCode: normalizedCountryCode,
      timezone: normalizedTimezone,
    );
    final (fajrAngle, ishaAngle) = _defaultAnglesForMethod(
      profile.calculationMethod,
    );

    await _prefs.setDouble('latitude', lat);
    await _prefs.setDouble('longitude', lng);
    await _prefs.setString('locationName', normalizedName);
    await _prefs.setString('calculationMethod', profile.calculationMethod);
    await _prefs.setString('madhab', profile.madhab);
    await _prefs.setDouble('fajrAngle', fajrAngle);
    await _prefs.setDouble('ishaAngle', ishaAngle);
    if (normalizedCountryCode == null) {
      await _prefs.remove('countryCode');
    } else {
      await _prefs.setString('countryCode', normalizedCountryCode);
    }
    if (normalizedTimezone == null) {
      await _prefs.remove('timezone');
    } else {
      await _prefs.setString('timezone', normalizedTimezone);
    }
    state = state.copyWith(
      calculationMethod: profile.calculationMethod,
      madhab: profile.madhab,
      fajrAngle: fajrAngle,
      ishaAngle: ishaAngle,
      latitude: lat,
      longitude: lng,
      locationName: normalizedName,
      countryCode: normalizedCountryCode,
      timezone: normalizedTimezone,
    );
  }

  Future<void> clearManualLocation() async {
    await _prefs.remove('latitude');
    await _prefs.remove('longitude');
    await _prefs.remove('locationName');
    await _prefs.remove('countryCode');
    await _prefs.remove('timezone');
    state = state.copyWith(
      latitude: null,
      longitude: null,
      locationName: null,
      countryCode: null,
      timezone: null,
    );
  }

  Future<void> toggleDarkMode(bool value) async {
    await _prefs.setBool('isDarkMode', value);
    state = state.copyWith(isDarkMode: value);
  }
}

final settingsProvider = StateNotifierProvider<SettingsNotifier, SettingsState>(
  (ref) {
    final prefs = ref.watch(sharedPreferencesProvider);
    return SettingsNotifier(prefs);
  },
);

SettingsState _loadSettingsState(SharedPreferences prefs) {
  final storedMethod = normalizeCalculationMethod(
    prefs.getString('calculationMethod') ?? diyanetPrayerMethod,
  );
  final storedMadhab = normalizeMadhab(
    prefs.getString('madhab') ?? hanafiMadhab,
  );
  final (defaultFajrAngle, defaultIshaAngle) = _defaultAnglesForMethod(
    storedMethod,
  );
  final storedLatitude = prefs.getDouble('latitude');
  final storedLongitude = prefs.getDouble('longitude');
  final hasValidLocation = hasValidLocationCoordinates(
    storedLatitude,
    storedLongitude,
  );
  final latitude = hasValidLocation ? storedLatitude : null;
  final longitude = hasValidLocation ? storedLongitude : null;
  final timezone = TimezoneUtils.resolveTimezoneName(
    timezoneName: hasValidLocation ? prefs.getString('timezone') : null,
    latitude: latitude,
    longitude: longitude,
  );

  return SettingsState(
    calculationMethod: storedMethod,
    madhab: storedMadhab,
    audioVoice: normalizeAudioVoice(
      prefs.getString('audioVoice') ?? misharyAlafasyVoice,
    ),
    qiblaOffset: prefs.getDouble('qiblaOffset') ?? 0.0,
    qiblaSmoothingEnabled: prefs.getBool('qiblaSmoothingEnabled') ?? true,
    fajrAngle: storedMethod == customPrayerMethod
        ? prefs.getDouble('fajrAngle') ?? 18.0
        : defaultFajrAngle,
    ishaAngle: storedMethod == customPrayerMethod
        ? prefs.getDouble('ishaAngle') ?? 17.0
        : defaultIshaAngle,
    languageCode: prefs.getString('languageCode'),
    latitude: latitude,
    longitude: longitude,
    locationName: hasValidLocation ? prefs.getString('locationName') : null,
    countryCode: hasValidLocation
        ? _normalizeOptionalCountryCode(prefs.getString('countryCode'))
        : null,
    timezone: timezone,
    isDarkMode: prefs.getBool('isDarkMode') ?? true,
  );
}

(double, double) _defaultAnglesForMethod(String method) {
  if (normalizeCalculationMethod(method) == customPrayerMethod) {
    return (18.0, 17.0);
  }

  final params = buildCalculationParameters(method);
  return (params.fajrAngle, params.ishaAngle ?? 0.0);
}

String? _normalizeOptionalCountryCode(String? countryCode) {
  final normalizedCountryCode = countryCode?.trim().toUpperCase();
  if (normalizedCountryCode == null || normalizedCountryCode.isEmpty) {
    return null;
  }

  return normalizedCountryCode;
}
