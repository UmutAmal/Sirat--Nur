class QuranDiagnosticRowData {
  final String label;
  final String value;
  final bool isHealthy;

  const QuranDiagnosticRowData(this.label, this.value, this.isHealthy);
}

List<QuranDiagnosticRowData> buildQuranDiagnosticRows({
  int? surahCount,
  int? ayahCount,
  Object? error,
}) {
  if (error != null) {
    return [
      QuranDiagnosticRowData(
        'Quran Dataset',
        summarizeQuranCloudError(error),
        false,
      ),
    ];
  }

  final normalizedSurahCount = surahCount ?? 0;
  final normalizedAyahCount = ayahCount ?? 0;

  return [
    QuranDiagnosticRowData(
      'Quran Surahs',
      '$normalizedSurahCount / 114',
      normalizedSurahCount == 114,
    ),
    QuranDiagnosticRowData(
      'Quran Ayahs',
      '$normalizedAyahCount / 6236',
      normalizedAyahCount == 6236,
    ),
  ];
}

String summarizeQuranCloudError(Object error) {
  final message = error.toString();
  final normalized = message.toLowerCase();
  final isMissingTable = normalized.contains('pgrst205') ||
      normalized.contains('could not find the table') ||
      normalized.contains('schema cache');

  if (isMissingTable) {
    return 'Cloud tables missing in Supabase; bundled fallback active';
  }

  return 'Cloud check failed: $message';
}
