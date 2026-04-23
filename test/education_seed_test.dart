import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('content_seed_education.sql', () {
    final seedFile = File('content_seed_education.sql');

    test('replaces legacy lesson copy with sourced verified rows', () {
      expect(seedFile.existsSync(), isTrue);

      final seed = seedFile.readAsStringSync();
      expect(seed, contains('INSERT INTO public.education_categories'));
      expect(seed, contains('INSERT INTO public.education_topics'));
      expect(seed, contains('ON CONFLICT (id) DO UPDATE SET'));
      expect(seed, contains('https://islamansiklopedisi.org.tr/iman'));
      expect(seed, contains('https://quran.com'));
      expect(seed, contains('https://sunnah.com'));
      expect(seed, isNot(contains('legacy://')));
      expect(seed, isNot(contains('6666')));
      expect(seed, isNot(contains('İslami Erdemenler')));
      expect(seed, isNot(contains('Allah korsu')));
    });
  });
}
