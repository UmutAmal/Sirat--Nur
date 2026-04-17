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
      for (final rawBaseUrl in const [
        'http://example.supabase.co',
        'https://token@example.supabase.co',
        'https://example.supabase.co/storage/v1',
        'https://example.supabase.co?apikey=secret',
        'https://example.supabase.co#secret',
      ]) {
        expect(
          () => buildSupabaseStoragePublicUrl(
            'audio-dua/morning/001.mp3',
            supabaseUrl: rawBaseUrl,
            bucketName: SupabaseConfig.duaAudioBucket,
          ),
          throwsFormatException,
          reason: rawBaseUrl,
        );
      }
    });

    test('rejects unsafe storage object paths', () {
      for (final storagePath in const [
        '',
        '../secret.mp3',
        'audio-dua/../secret.mp3',
        'https://cdn.example.com/audio.mp3',
        'audio-dua/morning/001.mp3?token=secret',
        'audio-dua/morning/001.mp3#secret',
      ]) {
        expect(
          () => buildSupabaseStoragePublicUrl(
            storagePath,
            supabaseUrl: 'https://example.supabase.co',
            bucketName: SupabaseConfig.duaAudioBucket,
          ),
          throwsFormatException,
          reason: storagePath,
        );
      }
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
      for (final rawUrl in [
        '${SupabaseConfig.url.replaceFirst('https://', 'https://token@')}/storage/v1/object/public/audio-sukun/rain.mp3',
        '${SupabaseConfig.url}/storage/v1/object/public/audio-sukun/rain.mp3?token=secret',
        '${SupabaseConfig.url}/storage/v1/object/public/audio-sukun/rain.mp3#secret',
        '${SupabaseConfig.url}/storage/v1/object/public/audio-sukun/../rain.mp3',
      ]) {
        expect(isSupabaseStoragePublicUrl(rawUrl), isFalse, reason: rawUrl);
      }
      expect(
        isSupabaseStoragePublicUrl(
          '${SupabaseConfig.url}/storage/v1/object/public/audio-sukun/rain.mp3',
          supabaseUrl: '${SupabaseConfig.url}/storage/v1',
        ),
        isFalse,
      );
    });
  });
}
