class QuranDiagnosticRowData {
  final String label;
  final String value;
  final bool isHealthy;

  const QuranDiagnosticRowData(this.label, this.value, this.isHealthy);
}

class QuranDiagnosticStrings {
  final String datasetLabel;
  final String surahsLabel;
  final String ayahsLabel;
  final String juzMetadataLabel;
  final String cloudTablesMissing;
  final String cloudJuzMissing;
  final String Function() cloudCheckFailed;
  final String Function() cloudStructuralCheckFailed;

  const QuranDiagnosticStrings({
    required this.datasetLabel,
    required this.surahsLabel,
    required this.ayahsLabel,
    required this.juzMetadataLabel,
    required this.cloudTablesMissing,
    required this.cloudJuzMissing,
    required this.cloudCheckFailed,
    required this.cloudStructuralCheckFailed,
  });
}

String _diagnosticErrorFingerprint(Object error) {
  final buffer = StringBuffer()..write(error);
  return buffer.toString().toLowerCase();
}

List<QuranDiagnosticRowData> buildQuranDiagnosticRows({
  required QuranDiagnosticStrings strings,
  int? surahCount,
  int? ayahCount,
  int? verifiedSurahCount,
  int? verifiedAyahCount,
  int? ayahsWithJuzCount,
  Object? error,
  Object? structuralError,
}) {
  if (error != null) {
    return [
      QuranDiagnosticRowData(
        strings.datasetLabel,
        summarizeQuranCloudError(error, strings),
        false,
      ),
    ];
  }

  final normalizedSurahCount = surahCount ?? 0;
  final normalizedAyahCount = ayahCount ?? 0;
  final normalizedVerifiedSurahCount =
      verifiedSurahCount ?? normalizedSurahCount;
  final normalizedVerifiedAyahCount = verifiedAyahCount ?? normalizedAyahCount;
  final completeVerifiedSurahCount = _lowestCount(
    normalizedSurahCount,
    normalizedVerifiedSurahCount,
  );
  final completeVerifiedAyahCount = _lowestCount(
    normalizedAyahCount,
    normalizedVerifiedAyahCount,
  );
  final normalizedAyahsWithJuzCount = ayahsWithJuzCount ?? 0;

  return [
    QuranDiagnosticRowData(
      strings.surahsLabel,
      '$completeVerifiedSurahCount / 114',
      completeVerifiedSurahCount == 114,
    ),
    QuranDiagnosticRowData(
      strings.ayahsLabel,
      '$completeVerifiedAyahCount / 6236',
      completeVerifiedAyahCount == 6236,
    ),
    QuranDiagnosticRowData(
      strings.juzMetadataLabel,
      structuralError == null
          ? '$normalizedAyahsWithJuzCount / 6236'
          : summarizeQuranStructuralError(structuralError, strings),
      structuralError == null && normalizedAyahsWithJuzCount == 6236,
    ),
  ];
}

int _lowestCount(int first, int second) => first < second ? first : second;

String summarizeQuranCloudError(Object error, QuranDiagnosticStrings strings) {
  // Fingerprint only; raw exception text must never be displayed in UI.
  final normalized = _diagnosticErrorFingerprint(error);
  final isMissingTable =
      normalized.contains('pgrst205') ||
      normalized.contains('could not find the table') ||
      normalized.contains('schema cache');

  if (isMissingTable) {
    return strings.cloudTablesMissing;
  }

  return strings.cloudCheckFailed();
}

String summarizeQuranStructuralError(
  Object error,
  QuranDiagnosticStrings strings,
) {
  // Fingerprint only; raw exception text must never be displayed in UI.
  final normalized = _diagnosticErrorFingerprint(error);
  final isMissingColumn =
      normalized.contains('juz_number') &&
      (normalized.contains('column') ||
          normalized.contains('schema cache') ||
          normalized.contains('pgrst'));

  if (isMissingColumn) {
    return strings.cloudJuzMissing;
  }

  return strings.cloudStructuralCheckFailed();
}
