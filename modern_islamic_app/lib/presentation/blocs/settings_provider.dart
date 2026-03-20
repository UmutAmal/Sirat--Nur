import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/core/services/location_service.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError('sharedPreferencesProvider must be overridden');
});

String _normalizeAudioVoice(String? value) {
  if (value == null || value == 'Male') return 'Male (Mishary Alafasy)';
  if (value == 'Female') return 'Female (English Transcript)';
  return value;
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

  SettingsState({
    this.calculationMethod = 'Turkey',
    this.madhab = 'Hanafi',
    this.audioVoice = 'Male',
    this.qiblaOffset = 0.0,
    this.qiblaSmoothingEnabled = true,
    this.fajrAngle = 18.0,
    this.ishaAngle = 17.0,
    this.languageCode,
    this.latitude,
    this.longitude,
    this.locationName,
  });

  SettingsState copyWith({
    String? calculationMethod,
    String? madhab,
    String? audioVoice,
    double? qiblaOffset,
    bool? qiblaSmoothingEnabled,
    double? fajrAngle,
    double? ishaAngle,
    String? languageCode,
    double? latitude,
    double? longitude,
    String? locationName,
  }) {
    return SettingsState(
      calculationMethod: calculationMethod ?? this.calculationMethod,
      madhab: madhab ?? this.madhab,
      audioVoice: audioVoice ?? this.audioVoice,
      qiblaOffset: qiblaOffset ?? this.qiblaOffset,
      qiblaSmoothingEnabled: qiblaSmoothingEnabled ?? this.qiblaSmoothingEnabled,
      fajrAngle: fajrAngle ?? this.fajrAngle,
      ishaAngle: ishaAngle ?? this.ishaAngle,
      languageCode: languageCode ?? this.languageCode,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      locationName: locationName ?? this.locationName,
    );
  }
}

class SettingsNotifier extends StateNotifier<SettingsState> {
  final SharedPreferences _prefs;

  SettingsNotifier(this._prefs) : super(SettingsState(
    calculationMethod: _prefs.getString('calculationMethod') ?? 'Turkey',
    madhab: _prefs.getString('madhab') ?? 'Hanafi',
    audioVoice: _normalizeAudioVoice(_prefs.getString('audioVoice')),
    qiblaOffset: _prefs.getDouble('qiblaOffset') ?? 0.0,
    qiblaSmoothingEnabled: _prefs.getBool('qiblaSmoothingEnabled') ?? true,
    fajrAngle: _prefs.getDouble('fajrAngle') ?? 18.0,
    ishaAngle: _prefs.getDouble('ishaAngle') ?? 17.0,
    languageCode: _prefs.getString('languageCode'),
    latitude: _prefs.getDouble('latitude'),
    longitude: _prefs.getDouble('longitude'),
    locationName: _prefs.getString('locationName'),
  ));

  Future<void> updateCalculationMethod(String method) async {
    await _prefs.setString('calculationMethod', method);
    state = state.copyWith(calculationMethod: method);
  }

  Future<void> updateMadhab(String madhab) async {
    await _prefs.setString('madhab', madhab);
    state = state.copyWith(madhab: madhab);
  }

  Future<void> updateAudioVoice(String voice) async {
    await _prefs.setString('audioVoice', voice);
    state = state.copyWith(audioVoice: voice);
  }

  Future<void> updateQiblaOffset(double offset) async {
    await _prefs.setDouble('qiblaOffset', offset);
    state = state.copyWith(qiblaOffset: offset);
  }

  Future<void> updateQiblaSmoothingEnabled(bool enabled) async {
    await _prefs.setBool('qiblaSmoothingEnabled', enabled);
    state = state.copyWith(qiblaSmoothingEnabled: enabled);
  }

  Future<void> updateCustomAngles(double fajr, double isha) async {
    await _prefs.setDouble('fajrAngle', fajr);
    await _prefs.setDouble('ishaAngle', isha);
    state = state.copyWith(fajrAngle: fajr, ishaAngle: isha);
  }

  Future<void> updateLanguage(String? langCode) async {
    if (langCode == null) {
      await _prefs.remove('languageCode');
    } else {
      await _prefs.setString('languageCode', langCode);
    }
    state = state.copyWith(languageCode: langCode);
  }

  Future<void> updateLocation(double lat, double lng, String name) async {
    await _prefs.setDouble('latitude', lat);
    await _prefs.setDouble('longitude', lng);
    await _prefs.setString('locationName', name);
    state = state.copyWith(latitude: lat, longitude: lng, locationName: name);
    
    // Suggest method and language if not explicitly set
    try {
      final placemark = await LocationService.getPlacemark(lat, lng);
      if (placemark != null) {
         if (!_prefs.containsKey('calculationMethod')) {
            final method = LocationService.suggestCalculationMethod(placemark);
            if (method != null) await updateCalculationMethod(method);
         }
         if (!_prefs.containsKey('languageCode')) {
            final lang = LocationService.suggestLanguage(placemark.isoCountryCode);
            if (lang != null) await updateLanguage(lang);
         }
      }
    } catch (e) {
      debugPrint('Placemark auto-detection failed: $e');
    }
  }

  Future<void> clearManualLocation() async {
    await _prefs.remove('latitude');
    await _prefs.remove('longitude');
    await _prefs.remove('locationName');
    state = state.copyWith(latitude: null, longitude: null, locationName: null);
  }

  /// Automatically detect and set the best calculation method based on GPS coordinates.
  /// Only sets it if the user hasn't explicitly saved a preference yet.
  Future<void> autoDetectCalculationMethod(double latitude, double longitude) async {
    if (_prefs.containsKey('calculationMethod')) return; // Don't override user choice
    
    final placemark = await LocationService.getPlacemark(latitude, longitude);
    if (placemark != null) {
      final suggestedMethod = LocationService.suggestCalculationMethod(placemark);
      if (suggestedMethod != null) {
        await updateCalculationMethod(suggestedMethod);
      }
    }
  }
}

final settingsProvider = StateNotifierProvider<SettingsNotifier, SettingsState>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return SettingsNotifier(prefs);
});
