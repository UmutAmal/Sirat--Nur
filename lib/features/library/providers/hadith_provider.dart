import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/providers/supabase_providers.dart';
import 'package:sirat_i_nur/core/services/hadith_api_service.dart';

class HadithItem {
  final int number;
  final String arabic;
  final String translation;
  final String? heading;

  HadithItem({
    required this.number,
    required this.arabic,
    required this.translation,
    this.heading,
  });
}

class HadithRequest {
  final String collectionId;
  final String langCode;

  HadithRequest(this.collectionId, this.langCode);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HadithRequest &&
          collectionId == other.collectionId &&
          langCode == other.langCode;

  @override
  int get hashCode => collectionId.hashCode ^ langCode.hashCode;
}

final hadithSectionProvider =
    FutureProvider.family<List<HadithItem>, HadithRequest>((ref, req) async {
      if (!hasVerifiedHadithDataset) {
        throw const VerifiedHadithDatasetUnavailable();
      }

      final supabase = readRequiredSupabaseClient(ref);
      final rows = await supabase
          .from('hadiths')
          .select(
            'collection_id, book, hadith_number, text_ar, text_tr, text_en, narrator, grade, source, source_license, verified_at',
          )
          .eq('collection_id', req.collectionId)
          .order('hadith_number', ascending: true);

      return resolveVerifiedHadithItems(
        List<Map<String, dynamic>>.from(rows),
        collectionId: req.collectionId,
        langCode: req.langCode,
      );
    }, retry: _retryHadithSectionProvider);

List<HadithItem> resolveVerifiedHadithItems(
  List<Map<String, dynamic>> rows, {
  required String collectionId,
  required String langCode,
}) {
  final normalizedCollection = collectionId.trim().toLowerCase();
  final normalizedLang = langCode.trim().toLowerCase();
  final items = <HadithItem>[];
  final seenNumbers = <int>{};

  for (final row in rows) {
    final rowCollection = _readText(row['collection_id'])?.toLowerCase();
    if (rowCollection != normalizedCollection) {
      continue;
    }

    final number = _readInt(row['hadith_number']);
    if (number == null || number < 1 || !seenNumbers.add(number)) {
      continue;
    }

    final book = _readText(row['book']);
    final arabic = _readText(row['text_ar']);
    final translation = _readPreferredTranslation(row, normalizedLang);
    final source = _readText(row['source']);
    final sourceLicense = _readText(row['source_license']);
    final verifiedAt = _readVerifiedAt(row['verified_at']);
    if (book == null ||
        arabic == null ||
        translation == null ||
        source == null ||
        sourceLicense == null ||
        verifiedAt == null) {
      continue;
    }

    items.add(
      HadithItem(
        number: number,
        arabic: arabic,
        translation: translation,
        heading: book,
      ),
    );
  }

  items.sort((left, right) => left.number.compareTo(right.number));
  return List.unmodifiable(items);
}

String? _readPreferredTranslation(Map<String, dynamic> row, String langCode) {
  if (langCode == 'tr') {
    return _readText(row['text_tr']) ?? _readText(row['text_en']);
  }

  if (langCode == 'en') {
    return _readText(row['text_en']) ?? _readText(row['text_tr']);
  }

  return _readText(row['text_$langCode']) ??
      _readText(row['text_en']) ??
      _readText(row['text_tr']);
}

int? _readInt(Object? value) {
  if (value is int) return value;
  if (value is num) return value.toInt();
  if (value is String) return int.tryParse(value.trim());
  return null;
}

String? _readText(Object? value) {
  if (value is! String) return null;
  final trimmed = value.trim();
  return trimmed.isEmpty ? null : trimmed;
}

DateTime? _readVerifiedAt(Object? value) {
  final raw = _readText(value);
  if (raw == null) return null;
  return DateTime.tryParse(raw);
}

Duration? _retryHadithSectionProvider(int retryCount, Object error) {
  if (error is VerifiedHadithDatasetUnavailable) {
    return null;
  }

  return ProviderContainer.defaultRetry(retryCount, error);
}
