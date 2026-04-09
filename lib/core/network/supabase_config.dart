import 'package:supabase_flutter/supabase_flutter.dart';

/// Supabase configuration.
///
/// Keys are injected via `--dart-define` at build time for best-practice
/// security.  Fallback values are the current development defaults so the
/// app still runs without explicit defines during local development.
///
/// Production builds should use:
/// ```
/// flutter build apk \
///   --dart-define=SUPABASE_URL=https://... \
///   --dart-define=SUPABASE_ANON_KEY=sb_...
/// ```
class SupabaseConfig {
  static const String url = String.fromEnvironment(
    'SUPABASE_URL',
    defaultValue: 'https://amevotnudldbbwogtrtw.supabase.co',
  );

  static const String anonKey = String.fromEnvironment(
    'SUPABASE_ANON_KEY',
    defaultValue: 'sb_publishable_OHSZX1gWTVJyvGLA2YbCdQ_aXwaXVD8',
  );

  static const String quranAudioBucket = String.fromEnvironment(
    'SUPABASE_QURAN_AUDIO_BUCKET',
    defaultValue: 'quran-audio',
  );

  static const String placesTileUrlTemplate = String.fromEnvironment(
    'PLACES_TILE_URL_TEMPLATE',
    defaultValue: '',
  );

  static SupabaseClient get client => Supabase.instance.client;

  static Future<void> initialize() async {
    await Supabase.initialize(url: url, anonKey: anonKey);
  }
}
