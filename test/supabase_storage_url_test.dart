import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/network/supabase_config.dart';
import 'package:sirat_i_nur/core/network/supabase_storage_url.dart';

void main() {
  group('Supabase storage URL helpers', () {
    test('normalizes bucket-prefixed object paths', () {
      expect(
        normalizeSupabaseStorageObjectPath('quran-audio/alafasy/001.mp3'),
        'alafasy/001.mp3',
      );
      expect(
        normalizeSupabaseStorageObjectPath('/alafasy/001.mp3'),
        'alafasy/001.mp3',
      );
    });

    test('builds encoded public URLs for custom audio buckets', () {
      final url = buildSupabaseStoragePublicUrl(
        r'\audio-dua\morning dua\001 file.mp3',
        supabaseUrl: 'https://example.supabase.co',
        bucketName: SupabaseConfig.duaAudioBucket,
      );

      expect(
        url,
        'https://example.supabase.co/storage/v1/object/public/audio-dua/morning%20dua/001%20file.mp3',
      );
    });

    test('rejects insecure Supabase storage bases', () {
      expect(
        () => buildSupabaseStoragePublicUrl(
          'audio-dua/morning/001.mp3',
          supabaseUrl: 'http://example.supabase.co',
          bucketName: SupabaseConfig.duaAudioBucket,
        ),
        throwsFormatException,
      );
    });

    test('recognizes only configured public audio storage URLs', () {
      expect(
        isSupabaseStoragePublicUrl(
          '${SupabaseConfig.url}/storage/v1/object/public/audio-sukun/rain.mp3',
        ),
        isTrue,
      );
      expect(
        isSupabaseStoragePublicUrl('https://cdn.example.com/rain.mp3'),
        isFalse,
      );
      expect(
        isSupabaseStoragePublicUrl(
          '${SupabaseConfig.url}/storage/v1/object/public/random-bucket/rain.mp3',
        ),
        isFalse,
      );
      expect(
        isSupabaseStoragePublicUrl(
          '${SupabaseConfig.url}/storage/v1/object/public/audio-sukun/',
        ),
        isFalse,
      );
      expect(
        isSupabaseStoragePublicUrl(
          'http://example.supabase.co/storage/v1/object/public/audio-sukun/rain.mp3',
          supabaseUrl: 'http://example.supabase.co',
        ),
        isFalse,
      );
    });
  });
}
