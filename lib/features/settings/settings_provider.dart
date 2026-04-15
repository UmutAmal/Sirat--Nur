import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/core/services/prayer_profile_service.dart';

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

  SettingsNotifier(this._prefs)
    : super(
        (() {
          final storedMethod = normalizeCalculationMethod(
            _prefs.getString('calculationMethod') ?? diyanetPrayerMethod,
          );
          final storedMadhab = normalizeMadhab(
            _prefs.getString('madhab') ?? hanafiMadhab,
          );
          final (defaultFajrAngle, defaultIshaAngle) = _defaultAnglesForMethod(
            storedMethod,
          );

          return SettingsState(
            calculationMethod: storedMethod,
            madhab: storedMadhab,
            audioVoice: normalizeAudioVoice(
              _prefs.getString('audioVoice') ?? misharyAlafasyVoice,
            ),
            qiblaOffset: _prefs.getDouble('qiblaOffset') ?? 0.0,
            qiblaSmoothingEnabled:
                _prefs.getBool('qiblaSmoothingEnabled') ?? true,
            fajrAngle: storedMethod == customPrayerMethod
                ? _prefs.getDouble('fajrAngle') ?? 18.0
                : defaultFajrAngle,
            ishaAngle: storedMethod == customPrayerMethod
                ? _prefs.getDouble('ishaAngle') ?? 17.0
                : defaultIshaAngle,
            languageCode: _prefs.getString('languageCode'),
            latitude: _prefs.getDouble('latitude'),
            longitude: _prefs.getDouble('longitude'),
            locationName: _prefs.getString('locationName'),
            timezone: _prefs.getString('timezone'),
            isDarkMode: _prefs.getBool('isDarkMode') ?? true,
          );
        })(),
      );

  Future<void> updateCalculationMethod(String method) async {
    final normalizedMethod = normalizeCalculationMethod(method);
    final (fajrAngle, ishaAngle) = _defaultAnglesForMethod(normalizedMethod);
    await _prefs.setString('calculationMethod', normalizedMethod);
    await _prefs.setDouble('fajrAngle', fajrAngle);
    await _prefs.setDouble('ishaAngle', ishaAngle);
    state = state.copyWith(
      calculationMethod: normalizedMethod,
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
    final profile = resolvePrayerProfile(
      countryCode: countryCode,
      timezone: timezone,
    );
    final (fajrAngle, ishaAngle) = _defaultAnglesForMethod(
      profile.calculationMethod,
    );

    await _prefs.setDouble('latitude', lat);
    await _prefs.setDouble('longitude', lng);
    await _prefs.setString('locationName', name);
    await _prefs.setString('calculationMethod', profile.calculationMethod);
    await _prefs.setString('madhab', profile.madhab);
    await _prefs.setDouble('fajrAngle', fajrAngle);
    await _prefs.setDouble('ishaAngle', ishaAngle);
    if (timezone == null || timezone.trim().isEmpty) {
      await _prefs.remove('timezone');
    } else {
      await _prefs.setString('timezone', timezone);
    }
    state = state.copyWith(
      calculationMethod: profile.calculationMethod,
      madhab: profile.madhab,
      fajrAngle: fajrAngle,
      ishaAngle: ishaAngle,
      latitude: lat,
      longitude: lng,
      locationName: name,
      timezone: timezone,
    );
  }

  Future<void> clearManualLocation() async {
    await _prefs.remove('latitude');
    await _prefs.remove('longitude');
    await _prefs.remove('locationName');
    await _prefs.remove('timezone');
    state = state.copyWith(
      latitude: null,
      longitude: null,
      locationName: null,
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

(double, double) _defaultAnglesForMethod(String method) {
  if (normalizeCalculationMethod(method) == customPrayerMethod) {
    return (18.0, 17.0);
  }

  final params = buildCalculationParameters(method);
  return (params.fajrAngle, params.ishaAngle ?? 0.0);
}
