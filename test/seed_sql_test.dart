import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('seed.sql', () {
    final seed = File('seed.sql').readAsStringSync();

    test(
      'keeps unverified religious education rows out of production seed',
      () {
        expect(
          seed,
          isNot(contains('INSERT INTO public.education_categories')),
        );
        expect(seed, isNot(contains('INSERT INTO public.education_topics')));
        expect(seed, isNot(contains('6666')));
        expect(seed, isNot(contains('İslami Erdemenler')));
        expect(seed, isNot(contains('Allah korsu')));
        expect(seed, contains('source and verified_at'));
      },
    );

    test('derives daily ayat rows from verified Quran ayah seed tables', () {
      expect(seed, contains('WITH daily_ayat_seed'));
      expect(seed, contains('JOIN public.quran_surahs'));
      expect(seed, contains('JOIN public.quran_ayahs'));
      expect(seed, contains('ayah.text_ar'));
      expect(seed, contains('ayah.source'));
      expect(seed, contains('ayah.verified_at'));
      expect(seed, contains("content_type = 'legacy_unverified_'"));
      expect(seed, contains("source LIKE 'legacy://sirat-i-nur/%'"));
      expect(
        seed,
        contains('ON CONFLICT (content_type, display_date) DO UPDATE SET'),
      );
      expect(
        seed,
        isNot(
          contains(
            "content_ar, content_tr, content_en, reference, display_date) VALUES",
          ),
        ),
      );
    });

    test('upserts live tv channels instead of duplicating them', () {
      expect(seed, contains('ON CONFLICT (short_label) DO UPDATE SET'));
      expect(seed, contains('Makkah Al-Mukarramah'));
      expect(seed, contains('Al-Madinah Al-Munawwarah'));
    });
  });
}
