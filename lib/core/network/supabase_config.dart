import 'package:supabase_flutter/supabase_flutter.dart';

/// Supabase configuration.
///
/// Keys are injected via `--dart-define` at build time for best-practice
/// security. The public project URL has a development default because it is
/// used to construct public Storage URLs, but the anon key must never be
/// committed as a fallback value.
///
/// Production builds should use:
/// ```
/// flutter build apk \
///   --dart-define=SUPABASE_URL=https://... \
///   --dart-define=SUPABASE_ANON_KEY=sb_...
/// ```
class SupabaseConfig {
  static const String credentialsMissingErrorCode =
      'supabase_credentials_missing';

  static const String url = String.fromEnvironment(
    'SUPABASE_URL',
    defaultValue: 'https://amevotnudldbbwogtrtw.supabase.co',
  );

  static const String anonKey = String.fromEnvironment('SUPABASE_ANON_KEY');

  static const String quranAudioBucket = String.fromEnvironment(
    'SUPABASE_QURAN_AUDIO_BUCKET',
    defaultValue: 'quran-audio',
  );

  static const String sukunAudioBucket = String.fromEnvironment(
    'SUPABASE_SUKUN_AUDIO_BUCKET',
    defaultValue: 'audio-sukun',
  );

  static const String duaAudioBucket = String.fromEnvironment(
    'SUPABASE_DUA_AUDIO_BUCKET',
    defaultValue: 'audio-dua',
  );

  static const String adhanAudioBucket = String.fromEnvironment(
    'SUPABASE_ADHAN_AUDIO_BUCKET',
    defaultValue: 'audio-adhan',
  );

  static const String asmaAudioBucket = String.fromEnvironment(
    'SUPABASE_ASMA_AUDIO_BUCKET',
    defaultValue: 'audio-asma',
  );

  static const String placesTileUrlTemplate = String.fromEnvironment(
    'PLACES_TILE_URL_TEMPLATE',
    defaultValue: '',
  );

  static const String placesOverpassApiUrl = String.fromEnvironment(
    'PLACES_OVERPASS_API_URL',
    defaultValue: '',
  );

  static bool hasRuntimeCredentials({
    String candidateUrl = url,
    String candidateAnonKey = anonKey,
  }) {
    return candidateUrl.trim().isNotEmpty && candidateAnonKey.trim().isNotEmpty;
  }

  static bool get isConfigured => hasRuntimeCredentials();

  static SupabaseClient get client => Supabase.instance.client;

  static Future<void> initialize() async {
    if (!isConfigured) {
      throw StateError(credentialsMissingErrorCode);
    }

    await Supabase.initialize(url: url, anonKey: anonKey);
  }
}
