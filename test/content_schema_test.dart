import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('content_schema.sql', () {
    final schemaFile = File('content_schema.sql');

    test('defines public duas and asma tables for cloud-first content', () {
      final schema = schemaFile.readAsStringSync();

      expect(schemaFile.existsSync(), isTrue);
      expect(schema, contains('create table if not exists public.duas'));
      expect(
        schema,
        contains('create table if not exists public.asma_ul_husna'),
      );
      expect(schema, contains('verified_at timestamptz not null'));
    });

    test('enables RLS and public select policies for content tables', () {
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
    });
  });
}
