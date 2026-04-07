import 'package:flutter_riverpod/flutter_riverpod.dart';
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

final hadithSectionProvider = FutureProvider.family<List<HadithItem>, HadithRequest>((ref, req) async {
  // Try fetching section 1 as a proof of concept. 
  // In a full app, we would paginate, but section 1 alone contains enough typical hadiths for view.
  final translations = await HadithApiService.fetchHadiths(
    collectionId: req.collectionId, 
    langCode: req.langCode, 
    section: 1,
  );
  
  final arabics = await HadithApiService.fetchArabicHadiths(
    collectionId: req.collectionId, 
    section: 1,
  );

  final List<HadithItem> items = [];
  
  for (int i = 0; i < translations.length; i++) {
    final trans = translations[i];
    final hadithNum = trans['hadithnumber'] as num? ?? i;
    
    // Find matching arabic by hadithnumber if possible
    final arabicMatch = arabics.firstWhere(
      (a) => a['hadithnumber'] == trans['hadithnumber'], 
      orElse: () => arabics.length > i ? arabics[i] : {},
    );
    
    if (trans['text'] != null && trans['text'].toString().isNotEmpty) {
      items.add(HadithItem(
        number: hadithNum.toInt(),
        arabic: arabicMatch['text']?.toString() ?? '',
        translation: trans['text'].toString(),
        heading: arabicMatch['reference']?['book']?.toString(), // optional heading
      ));
    }
  }
  
  return items;
});
