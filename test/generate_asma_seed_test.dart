import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/constants/asma_ul_husna_names.dart';

import '../tool/generate_asma_seed.dart';

void main() {
  test('buildAsmaUlHusnaSeedSql emits complete verified rows', () {
    final sql = buildAsmaUlHusnaSeedSql(verifiedAt: DateTime.utc(2026, 4, 23));

    expect(
      RegExp(r'INSERT INTO public\.asma_ul_husna').allMatches(sql),
      hasLength(asmaUlHusnaNames.length),
    );
    expect(sql, contains(defaultAsmaSource));
    expect(sql, contains("TIMESTAMPTZ '2026-04-23T00:00:00.000Z'"));
    expect(sql, contains('audio_url = EXCLUDED.audio_url'));
    expect(sql, contains('storage_path = EXCLUDED.storage_path'));
    expect(sql, isNot(contains('download.quranicaudio.com')));
    expect(sql, isNot(contains('server7.mp3quran.net')));
  });
}
