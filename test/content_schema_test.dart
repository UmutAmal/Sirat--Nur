import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('content_schema.sql', () {
    final schemaFile = File('content_schema.sql');

    test(
      'defines public duas, asma, quran and audio tables for cloud-first content',
      () {
        final schema = schemaFile.readAsStringSync();

        expect(schemaFile.existsSync(), isTrue);
        expect(schema, contains('create table if not exists public.duas'));
        expect(
          schema,
          contains('create table if not exists public.asma_ul_husna'),
        );
        expect(
          schema,
          contains('create table if not exists public.quran_surahs'),
        );
        expect(
          schema,
          contains('create table if not exists public.quran_ayahs'),
        );
        expect(
          schema,
          contains('create table if not exists public.tafsir_entries'),
        );
        expect(
          schema,
          contains('create table if not exists public.audio_files'),
        );
        expect(schema, contains('storage_path text'));
        expect(
          schema,
          contains(
            'alter table public.duas\nadd column if not exists storage_path text;',
          ),
        );
        expect(
          schema,
          contains(
            'alter table public.asma_ul_husna\nadd column if not exists storage_path text;',
          ),
        );
        expect(schema, contains('surah_number smallint'));
        expect(schema, contains('juz_number smallint'));
        expect(schema, contains('tafsir_source text not null'));
        expect(schema, contains('tafsir_text text not null'));
        expect(schema, contains('source_license text'));
        expect(
          schema,
          contains('unique (surah_number, ayah_number, tafsir_source)'),
        );
        expect(
          schema,
          contains(
            "insert into storage.buckets (id, name, public)\nvalues ('quran-audio', 'quran-audio', true)",
          ),
        );
        expect(
          schema,
          contains(
            "insert into storage.buckets (id, name, public)\nvalues ('audio-sukun', 'audio-sukun', true)",
          ),
        );
        expect(
          schema,
          contains(
            "insert into storage.buckets (id, name, public)\nvalues ('audio-dua', 'audio-dua', true)",
          ),
        );
        expect(
          schema,
          contains(
            "insert into storage.buckets (id, name, public)\nvalues ('audio-adhan', 'audio-adhan', true)",
          ),
        );
        expect(
          schema,
          contains(
            "insert into storage.buckets (id, name, public)\nvalues ('audio-asma', 'audio-asma', true)",
          ),
        );
        expect(
          schema,
          contains(
            'create unique index if not exists audio_files_quran_surah_unique_idx',
          ),
        );
        expect(schema, contains('verified_at timestamptz not null'));
      },
    );

    test('enables RLS and public select policies for all content tables', () {
      final schema = schemaFile.readAsStringSync();

      expect(
        schema,
        contains('alter table public.duas enable row level security;'),
      );
      expect(schema, contains('create policy "Public read duas"'));
      expect(
        schema,
        contains('alter table public.asma_ul_husna enable row level security;'),
      );
      expect(schema, contains('create policy "Public read asma ul husna"'));
      expect(
        schema,
        contains('alter table public.quran_surahs enable row level security;'),
      );
      expect(schema, contains('create policy "Public read quran surahs"'));
      expect(
        schema,
        contains('alter table public.quran_ayahs enable row level security;'),
      );
      expect(schema, contains('create policy "Public read quran ayahs"'));
      expect(
        schema,
        contains(
          'alter table public.tafsir_entries enable row level security;',
        ),
      );
      expect(schema, contains('create policy "Public read tafsir entries"'));
      expect(
        schema,
        contains('alter table public.audio_files enable row level security;'),
      );
      expect(schema, contains('create policy "Public read audio files"'));
      expect(
        schema,
        contains('create policy "Public read quran audio bucket"'),
      );
      expect(schema, contains("using (bucket_id = 'quran-audio');"));
      expect(
        schema,
        contains('create policy "Public read sukun audio bucket"'),
      );
      expect(schema, contains("using (bucket_id = 'audio-sukun');"));
      expect(schema, contains('create policy "Public read dua audio bucket"'));
      expect(schema, contains("using (bucket_id = 'audio-dua');"));
      expect(
        schema,
        contains('create policy "Public read adhan audio bucket"'),
      );
      expect(schema, contains("using (bucket_id = 'audio-adhan');"));
      expect(schema, contains('create policy "Public read asma audio bucket"'));
      expect(schema, contains("using (bucket_id = 'audio-asma');"));
    });
  });
}
