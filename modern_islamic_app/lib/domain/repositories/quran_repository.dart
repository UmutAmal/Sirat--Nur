import 'package:sirat_i_nur/domain/entities/surah_entity.dart';
import 'package:sirat_i_nur/domain/entities/ayah_entity.dart';

abstract class QuranRepository {
  Future<List<SurahEntity>> getAllSurahs();
  Future<List<AyahEntity>> getAyahsForSurah(int surahNumber);
  
  /// Fetches a specific set of Ayahs (Verses) for a given Juz
  Future<List<AyahEntity>> getAyahsForJuz(int juzNumber);
}
