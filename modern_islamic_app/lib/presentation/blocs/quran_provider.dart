import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/domain/entities/surah_entity.dart';
import 'package:sirat_i_nur/domain/entities/ayah_entity.dart';
import 'package:sirat_i_nur/domain/repositories/quran_repository.dart';
import 'package:sirat_i_nur/data/repositories/quran_repository_sqlite_impl.dart';
import 'package:sirat_i_nur/data/datasources/quran_local_database.dart';
import 'package:sirat_i_nur/domain/entities/quran_db_status.dart';

final quranRepositoryProvider = Provider<QuranRepository>((ref) {
  return QuranRepositorySqliteImpl(QuranLocalDatabase.instance);
});

final surahListProvider = FutureProvider<List<SurahEntity>>((ref) async {
  final repo = ref.watch(quranRepositoryProvider);
  return repo.getAllSurahs();
});

final surahAyahsProvider = FutureProvider.family<List<AyahEntity>, int>((ref, surahNumber) async {
  final repo = ref.watch(quranRepositoryProvider);
  return await repo.getAyahsForSurah(surahNumber);
});

final juzAyahsProvider = FutureProvider.family<List<AyahEntity>, int>((ref, juzNumber) async {
  final repo = ref.watch(quranRepositoryProvider);
  return await repo.getAyahsForJuz(juzNumber);
});

final quranStatusProvider = FutureProvider<QuranDbStatus>((ref) async {
  return QuranLocalDatabase.instance.getStatus();
});
