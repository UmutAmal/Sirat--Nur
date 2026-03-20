import 'package:sirat_i_nur/domain/entities/surah_entity.dart';
import 'package:sirat_i_nur/domain/entities/ayah_entity.dart';
import 'package:sirat_i_nur/domain/repositories/quran_repository.dart';
import 'package:sirat_i_nur/data/datasources/quran_local_database.dart';

class QuranRepositorySqliteImpl implements QuranRepository {
  final QuranLocalDatabase _database;

  QuranRepositorySqliteImpl(this._database);

  @override
  Future<List<SurahEntity>> getAllSurahs() async {
    return await _database.getAllSurahs();
  }

  @override
  Future<List<AyahEntity>> getAyahsForSurah(int surahNumber) async {
    return await _database.getAyahsForSurah(surahNumber);
  }

  @override
  Future<List<AyahEntity>> getAyahsForJuz(int juzNumber) async {
    return await _database.getAyahsForJuz(juzNumber);
  }
}
