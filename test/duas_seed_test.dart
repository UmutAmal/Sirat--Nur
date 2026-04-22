import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/constants/duas_data.dart';

void main() {
  group('content_seed_duas.sql', () {
    final seedFile = File('content_seed_duas.sql');

    test('seeds every verified bundled Quranic dua', () {
      expect(seedFile.existsSync(), isTrue);

      final seed = seedFile.readAsStringSync();
      expect(
        RegExp(r'INSERT INTO public\.duas').allMatches(seed),
        hasLength(dailyDuas.length),
      );
      expect(seed, contains('ON CONFLICT (id) DO UPDATE SET'));
      expect(seed, contains('quranic_dua'));
      expect(seed, contains('setval('));

      for (final dua in dailyDuas) {
        expect(seed, contains(dua.source), reason: dua.source);
        expect(seed, contains(dua.arabic), reason: dua.source);
        expect(seed, contains(dua.turkish), reason: dua.source);
        expect(seed, contains(dua.english), reason: dua.source);
      }
    });

    test('keeps unverified audio and external URLs out of the seed', () {
      final seed = seedFile.readAsStringSync();

      expect(seed, contains('audio_url'));
      expect(seed, contains('storage_path'));
      expect(seed, isNot(contains('download.quranicaudio.com')));
      expect(seed, isNot(contains('server7.mp3quran.net')));
      expect(seed, isNot(contains('https://cdn.example.com')));
    });
  });
}
