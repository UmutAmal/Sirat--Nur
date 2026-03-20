import 'package:sirat_i_nur/core/models/knowledge_entity.dart';
import 'package:sirat_i_nur/core/services/isar_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final knowledgeSeedingProvider = Provider((ref) => KnowledgeSeeder(ref.watch(isarServiceProvider)));

class KnowledgeSeeder {
  final IsarService _isar;
  KnowledgeSeeder(this._isar);

  Future<void> seed() async {
    // This is a specialized seeding logic to migrate the 130+ static entries from 
    // IslamicChatbotData to the Isar Knowledge Bed.
    
    final entities = [
      KnowledgeEntity()
        ..category = 'Prayer'
        ..title = 'Namaz (Salat) - Prayer'
        ..language = 'en'
        ..content = 'Namaz is the primary ritual prayer. There are 5 mandatory prayers: Fajr, Dhuhr, Asr, Maghrib, and Isha.'
        ..citation = 'Quran'
        ..keywords = ['namaz', 'salat', 'prayer', '5 times']
        ..updatedAt = DateTime.now(),
      
      KnowledgeEntity()
        ..category = 'Namaz'
        ..title = 'Namaz (Salat) - İbadet'
        ..language = 'tr'
        ..content = 'Namaz Müslümanların günde 5 vakit kıldığı ibadettir. Sabah, Öğle, İkindi, Akşam ve Yatsı vakitlerinden oluşur.'
        ..citation = 'Kur\'an'
        ..keywords = ['namaz', 'salat', 'ibadet', '5 vakit']
        ..updatedAt = DateTime.now(),

      // ... In a real scenario, we'd loop through IslamicChatbotData._categories
      // and map them into KnowledgeEntity objects.
    ];

    await _isar.seedInitialData(entities);
  }
}
