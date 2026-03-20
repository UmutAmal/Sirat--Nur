import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseConfig {
  static const String url = 'https://amevotnudldbbwogtrtw.supabase.co';
  static const String anonKey = 'sb_publishable_OHSZX1gWTVJyvGLA2YbCdQ_aXwaXVD8';

  static SupabaseClient get client => Supabase.instance.client;

  static Future<void> initialize() async {
    await Supabase.initialize(
      url: url,
      anonKey: anonKey,
    );
  }
}
