import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('content_schema.sql', () {
    final schemaFile = File('content_schema.sql');

    test('defines public runtime, quran and audio tables for cloud-first content', () {
      final schema = schemaFile.readAsStringSync();

      expect(schemaFile.existsSync(), isTrue);
      expect(
        schema,
        contains('create table if not exists public.daily_content'),
      );
      expect(
        schema,
        contains('create table if not exists public.live_tv_channels'),
      );
      expect(
        schema,
        contains('create table if not exists public.education_categories'),
      );
      expect(
        schema,
        contains('create table if not exists public.education_topics'),
      );
      expect(schema, contains('create table if not exists public.duas'));
      expect(
        schema,
        contains('create table if not exists public.asma_ul_husna'),
      );
      expect(
        schema,
        contains('create table if not exists public.quran_surahs'),
      );
      expect(schema, contains('create table if not exists public.quran_ayahs'));
      expect(
        schema,
        contains('create table if not exists public.tafsir_entries'),
      );
      expect(schema, contains('create table if not exists public.hadiths'));
      expect(schema, contains('create table if not exists public.audio_files'));
      expect(schema, contains('storage_path text'));
      expect(
        schema,
        contains(
          'alter table public.daily_content\nadd column if not exists verified_at timestamptz;',
        ),
      );
      expect(schema, contains('display_date date not null,'));
      expect(schema, contains('verified_at timestamptz not null,'));
      expect(
        schema,
        contains(
          'alter table public.daily_content\nalter column verified_at set not null;',
        ),
      );
      expect(
        schema,
        contains(
          'alter table public.daily_content\n'
          'drop constraint if exists daily_content_display_date_key;',
        ),
      );
      expect(
        schema,
        contains('drop index if exists daily_content_display_date_unique_idx;'),
      );
      expect(
        schema,
        contains(
          'create unique index if not exists daily_content_type_display_date_unique_idx',
        ),
      );
      expect(
        schema,
        contains('on public.daily_content (content_type, display_date);'),
      );
      expect(schema, isNot(contains('display_date date not null unique')));
      expect(schema, contains('short_label text not null unique'));
      expect(
        schema,
        contains(
          'create unique index if not exists live_tv_channels_short_label_unique_idx',
        ),
      );
      expect(
        schema,
        contains(
          'alter table public.education_categories\nadd column if not exists source text;',
        ),
      );
      expect(
        schema,
        contains(
          'alter table public.education_topics\nadd column if not exists verified_at timestamptz;',
        ),
      );
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
      expect(
        schema,
        contains(
          'source_license text not null check (length(trim(source_license)) > 0)',
        ),
      );
      expect(
        schema,
        contains(
          'alter table public.tafsir_entries\nalter column source_license set not null;',
        ),
      );
      expect(
        schema,
        contains('add constraint tafsir_entries_source_license_nonempty'),
      );
      expect(
        schema,
        contains('unique (surah_number, ayah_number, tafsir_source)'),
      );
      expect(schema, contains('collection_id text not null'));
      expect(schema, contains('book text not null'));
      expect(
        schema,
        contains('hadith_number integer not null check (hadith_number > 0)'),
      );
      expect(
        schema,
        contains('text_ar text not null check (length(trim(text_ar)) > 0)'),
      );
      expect(schema, contains('text_tr text'));
      expect(schema, contains('text_en text'));
      expect(schema, contains('narrator text'));
      expect(schema, contains('grade text'));
      expect(
        schema,
        contains(
          'alter table public.hadiths\nalter column source_license set not null;',
        ),
      );
      expect(
        schema,
        contains('add constraint hadiths_source_license_nonempty'),
      );
      expect(schema, contains('unique (collection_id, hadith_number)'));
      expect(
        schema,
        isNot(
          contains(
            "insert into storage.buckets (id, name, public)\nvalues ('quran-audio', 'quran-audio', true)",
          ),
        ),
      );
      expect(
        schema,
        contains(
          "update storage.buckets\nset public = false\nwhere id = 'quran-audio';",
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
    });

    test('enables RLS and public select policies for all content tables', () {
      final schema = schemaFile.readAsStringSync();

      expect(
        schema,
        contains('alter table public.daily_content enable row level security;'),
      );
      expect(schema, contains('create policy "Public read daily content"'));
      expect(
        schema,
        contains(
          'alter table public.live_tv_channels enable row level security;',
        ),
      );
      expect(schema, contains('create policy "Public read live tv channels"'));
      expect(
        schema,
        contains(
          'alter table public.education_categories enable row level security;',
        ),
      );
      expect(
        schema,
        contains('create policy "Public read education categories"'),
      );
      expect(
        schema,
        contains(
          'alter table public.education_topics enable row level security;',
        ),
      );
      expect(schema, contains('create policy "Public read education topics"'));
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
        contains('alter table public.hadiths enable row level security;'),
      );
      expect(schema, contains('create policy "Public read hadiths"'));
      expect(
        schema,
        contains('alter table public.audio_files enable row level security;'),
      );
      expect(schema, contains('create policy "Public read audio files"'));
      expect(
        schema,
        contains('drop policy if exists "Public read quran audio bucket"'),
      );
      expect(
        schema,
        isNot(contains('create policy "Public read quran audio bucket"')),
      );
      expect(schema, isNot(contains("using (bucket_id = 'quran-audio');")));
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
      expect(schema, contains("notify pgrst, 'reload schema';"));
    });
  });
}
