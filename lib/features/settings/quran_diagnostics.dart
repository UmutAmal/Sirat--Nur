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
  final String Function(Object error) cloudCheckFailed;
  final String Function(Object error) cloudStructuralCheckFailed;

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

List<QuranDiagnosticRowData> buildQuranDiagnosticRows({
  required QuranDiagnosticStrings strings,
  int? surahCount,
  int? ayahCount,
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
  final normalizedAyahsWithJuzCount = ayahsWithJuzCount ?? 0;

  return [
    QuranDiagnosticRowData(
      strings.surahsLabel,
      '$normalizedSurahCount / 114',
      normalizedSurahCount == 114,
    ),
    QuranDiagnosticRowData(
      strings.ayahsLabel,
      '$normalizedAyahCount / 6236',
      normalizedAyahCount == 6236,
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

String summarizeQuranCloudError(
  Object error,
  QuranDiagnosticStrings strings,
) {
  final message = error.toString();
  final normalized = message.toLowerCase();
  final isMissingTable = normalized.contains('pgrst205') ||
      normalized.contains('could not find the table') ||
      normalized.contains('schema cache');

  if (isMissingTable) {
    return strings.cloudTablesMissing;
  }

  return strings.cloudCheckFailed(error);
}

String summarizeQuranStructuralError(
  Object error,
  QuranDiagnosticStrings strings,
) {
  final message = error.toString();
  final normalized = message.toLowerCase();
  final isMissingColumn = normalized.contains('juz_number') &&
      (normalized.contains('column') ||
          normalized.contains('schema cache') ||
          normalized.contains('pgrst'));

  if (isMissingColumn) {
    return strings.cloudJuzMissing;
  }

  return strings.cloudStructuralCheckFailed(error);
}
