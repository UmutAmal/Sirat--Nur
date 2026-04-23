import 'package:sirat_i_nur/core/network/supabase_config.dart';
import 'package:sirat_i_nur/core/network/supabase_storage_url.dart';
import 'package:sirat_i_nur/core/constants/asma_ul_husna_names.dart';

class AsmaUlHusnaData {
  static const List<Map<String, dynamic>> names = asmaUlHusnaNames;
}

const Set<String> _approvedAsmaSourceHosts = {
  'diyanet.gov.tr',
  'islamansiklopedisi.org.tr',
  'islamhouse.com',
};

List<Map<String, dynamic>> buildBundledAsmaUlHusnaFallback() {
  return AsmaUlHusnaData.names
      .map((item) => {...item, 'audioUrl': ''})
      .toList(growable: false);
}

String _readAsmaString(Map<String, dynamic> row, List<String> keys) {
  for (final key in keys) {
    final value = row[key];
    if (value is String && value.trim().isNotEmpty) {
      return value.trim();
    }
  }
  return '';
}

String _readAsmaTranslation(Map<String, dynamic> row, String lang) {
  final translations = row['translations'];
  if (translations is Map) {
    final value = translations[lang];
    if (value is String && value.trim().isNotEmpty) {
      return value.trim();
    }
  }

  return _readAsmaString(row, switch (lang) {
    'tr' => ['meaning_tr', 'text_tr', 'content_tr', 'title_tr'],
    'en' => ['meaning_en', 'text_en', 'content_en', 'title_en'],
    _ => const [],
  });
}

Map<String, dynamic> _readAsmaTranslations(Map<String, dynamic> row) {
  final normalized = <String, dynamic>{};
  final rawTranslations = row['translations'];

  if (rawTranslations is Map) {
    for (final entry in rawTranslations.entries) {
      final key = entry.key.toString().trim();
      final value = entry.value;
      if (key.isEmpty || value is! String) continue;

      final trimmed = value.trim();
      if (trimmed.isEmpty) continue;
      normalized[key] = trimmed;
    }
  }

  final turkish = _readAsmaTranslation(row, 'tr');
  if (turkish.isNotEmpty) {
    normalized['tr'] = turkish;
  }

  final english = _readAsmaTranslation(row, 'en');
  if (english.isNotEmpty) {
    normalized['en'] = english;
  }

  return normalized;
}

String _resolveCloudAsmaAudioUrl(Map<String, dynamic> row) {
  final storagePath = _readAsmaString(row, ['storage_path', 'storagePath']);
  if (storagePath.isNotEmpty) {
    try {
      return buildSupabaseStoragePublicUrl(
        storagePath,
        bucketName: SupabaseConfig.asmaAudioBucket,
      );
    } on FormatException {
      return '';
    }
  }

  return '';
}

bool isApprovedCloudAsmaSourceUrl(String source) {
  final uri = Uri.tryParse(source.trim());
  if (uri == null ||
      !uri.isScheme('https') ||
      uri.host.trim().isEmpty ||
      uri.userInfo.isNotEmpty ||
      uri.hasQuery ||
      uri.hasFragment) {
    return false;
  }

  final host = uri.host.toLowerCase();
  return _approvedAsmaSourceHosts.any(
    (approvedHost) => host == approvedHost || host.endsWith('.$approvedHost'),
  );
}

Map<String, dynamic> normalizeAsmaUlHusnaRow(Map<String, dynamic> row) {
  final id = row['id'];
  final transliteration = _readAsmaString(row, [
    'transliteration',
    'title_en',
    'title_tr',
  ]);
  final arabic = _readAsmaString(row, ['name_ar', 'arabic', 'title_ar']);
  final translations = _readAsmaTranslations(row);
  final audioUrl = _resolveCloudAsmaAudioUrl(row);
  final source = _readAsmaString(row, ['source', 'reference']);
  final verifiedAt = _readAsmaString(row, ['verified_at', 'verifiedAt']);

  return {
    'id': id ?? '',
    'arabic': arabic,
    'transliteration': transliteration,
    'translations': translations,
    'audioUrl': audioUrl,
    'source': source,
    'verifiedAt': verifiedAt,
  };
}

List<Map<String, dynamic>> resolveCloudAsmaUlHusnaRows(
  List<Map<String, dynamic>> rows,
) {
  final parsed = rows.map(normalizeAsmaUlHusnaRow).where((item) {
    final translations = item['translations'] as Map<String, dynamic>;
    final hasTranslation = translations.values.any(
      (value) => value is String && value.trim().isNotEmpty,
    );

    return (item['arabic'] ?? '').toString().trim().isNotEmpty &&
        (item['transliteration'] ?? '').toString().trim().isNotEmpty &&
        hasTranslation &&
        isApprovedCloudAsmaSourceUrl((item['source'] ?? '').toString()) &&
        (item['verifiedAt'] ?? '').toString().trim().isNotEmpty;
  }).toList();

  return parsed.isEmpty ? buildBundledAsmaUlHusnaFallback() : parsed;
}
