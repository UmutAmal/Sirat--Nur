import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/settings/quran_diagnostics.dart';

void main() {
  group('Quran diagnostics helpers', () {
    test('marks complete live dataset as healthy', () {
      final rows = buildQuranDiagnosticRows(
        surahCount: 114,
        ayahCount: 6236,
      );

      expect(rows, hasLength(2));
      expect(rows[0].label, 'Quran Surahs');
      expect(rows[0].value, '114 / 114');
      expect(rows[0].isHealthy, isTrue);
      expect(rows[1].label, 'Quran Ayahs');
      expect(rows[1].value, '6236 / 6236');
      expect(rows[1].isHealthy, isTrue);
    });

    test('surfaces missing Supabase tables as honest fallback warning', () {
      final rows = buildQuranDiagnosticRows(
        error: Exception(
          "PostgrestException(message: Could not find the table 'public.quran_surahs' in the schema cache, code: PGRST205)",
        ),
      );

      expect(rows, hasLength(1));
      expect(rows.first.label, 'Quran Dataset');
      expect(
        rows.first.value,
        'Cloud tables missing in Supabase; bundled fallback active',
      );
      expect(rows.first.isHealthy, isFalse);
    });
  });
}
