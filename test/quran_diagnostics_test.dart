import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/settings/quran_diagnostics.dart';

const _strings = QuranDiagnosticStrings(
  datasetLabel: 'Quran Dataset',
  surahsLabel: 'Quran Surahs',
  ayahsLabel: 'Quran Ayahs',
  juzMetadataLabel: 'Quran Juz Metadata',
  cloudTablesMissing: 'Cloud tables missing in Supabase; bundled fallback active',
  cloudJuzMissing: 'Cloud juz metadata missing; bundled structural fallback active',
  cloudCheckFailed: _cloudCheckFailed,
  cloudStructuralCheckFailed: _cloudStructuralCheckFailed,
);

String _cloudCheckFailed(Object error) => 'Cloud check failed: $error';

String _cloudStructuralCheckFailed(Object error) =>
    'Cloud structural check failed: $error';

void main() {
  group('Quran diagnostics helpers', () {
    test('marks complete live dataset as healthy', () {
      final rows = buildQuranDiagnosticRows(
        strings: _strings,
        surahCount: 114,
        ayahCount: 6236,
        ayahsWithJuzCount: 6236,
      );

      expect(rows, hasLength(3));
      expect(rows[0].label, 'Quran Surahs');
      expect(rows[0].value, '114 / 114');
      expect(rows[0].isHealthy, isTrue);
      expect(rows[1].label, 'Quran Ayahs');
      expect(rows[1].value, '6236 / 6236');
      expect(rows[1].isHealthy, isTrue);
      expect(rows[2].label, 'Quran Juz Metadata');
      expect(rows[2].value, '6236 / 6236');
      expect(rows[2].isHealthy, isTrue);
    });

    test('flags incomplete juz metadata even when table counts look healthy', () {
      final rows = buildQuranDiagnosticRows(
        strings: _strings,
        surahCount: 114,
        ayahCount: 6236,
        ayahsWithJuzCount: 6200,
      );

      expect(rows, hasLength(3));
      expect(rows[2].label, 'Quran Juz Metadata');
      expect(rows[2].value, '6200 / 6236');
      expect(rows[2].isHealthy, isFalse);
    });

    test('surfaces missing juz column as structural fallback warning', () {
      final rows = buildQuranDiagnosticRows(
        strings: _strings,
        surahCount: 114,
        ayahCount: 6236,
        structuralError: Exception(
          "PostgrestException(message: column quran_ayahs.juz_number does not exist, code: PGRST204)",
        ),
      );

      expect(rows, hasLength(3));
      expect(rows[2].label, 'Quran Juz Metadata');
      expect(
        rows[2].value,
        'Cloud juz metadata missing; bundled structural fallback active',
      );
      expect(rows[2].isHealthy, isFalse);
    });

    test('surfaces missing Supabase tables as honest fallback warning', () {
      final rows = buildQuranDiagnosticRows(
        strings: _strings,
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
