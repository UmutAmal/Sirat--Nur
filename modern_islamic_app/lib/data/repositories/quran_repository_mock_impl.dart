import 'package:sirat_i_nur/domain/entities/surah_entity.dart';
import 'package:sirat_i_nur/domain/entities/ayah_entity.dart';
import 'package:sirat_i_nur/domain/repositories/quran_repository.dart';

class QuranRepositoryMockImpl implements QuranRepository {
  @override
  Future<List<SurahEntity>> getAllSurahs() async {
    // Simulating database delay
    await Future.delayed(const Duration(milliseconds: 500));
    
    return [
      const SurahEntity(
        number: 1,
        name: 'سُورَةُ ٱلْفَاتِحَةِ',
        englishName: 'Al-Faatiha',
        englishNameTranslation: 'The Opening',
        revelationType: 'Meccan',
        numberOfAyahs: 7,
      ),
      const SurahEntity(
        number: 112,
        name: 'سُورَةُ الإِخْلَاصِ',
        englishName: 'Al-Ikhlaas',
        englishNameTranslation: 'Sincerity',
        revelationType: 'Meccan',
        numberOfAyahs: 4,
      ),
    ];
  }

  @override
  Future<List<AyahEntity>> getAyahsForSurah(int surahNumber) async {
    await Future.delayed(const Duration(milliseconds: 500));

    if (surahNumber == 1) {
      return [
        const AyahEntity(
          number: 1,
          surahNumber: 1,
          text: 'بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ',
          enTranslation: 'In the name of Allah, the Entirely Merciful, the Especially Merciful.',
          trTranslation: 'Rahman ve Rahim olan Allah\'ın adıyla.',
          numberInSurah: 1,
          juz: 1,
          manzil: 1,
          page: 1,
          ruku: 1,
          hizbQuarter: 1,
          sajda: false,
        ),
         const AyahEntity(
          number: 2,
          surahNumber: 1,
          text: 'ٱلْحَمْدُ لِلَّهِ رَبِّ ٱلْعَٰلَمِينَ',
          enTranslation: '[All] praise is [due] to Allah, Lord of the worlds -',
          trTranslation: 'Hamd, alemlerin Rabbi olan Allah\'a mahsustur.',
          numberInSurah: 2,
          juz: 1,
          manzil: 1,
          page: 1,
          ruku: 1,
          hizbQuarter: 1,
          sajda: false,
        ),
      ];
    } else if (surahNumber == 112) {
      return [
        const AyahEntity(
          number: 6221,
          surahNumber: 112,
          text: 'قُلْ هُوَ ٱللَّهُ أَحَدٌ',
          enTranslation: 'Say, "He is Allah, [who is] One,',
          trTranslation: 'De ki: O Allah birdir.',
          numberInSurah: 1,
          juz: 30,
          manzil: 7,
          page: 604,
          ruku: 541,
          hizbQuarter: 240,
          sajda: false,
        )
      ];
    }
    return [];
  }

  @override
  Future<List<AyahEntity>> getAyahsForJuz(int juzNumber) async {
    await Future.delayed(const Duration(milliseconds: 500));
    // Returning dummy data for Juz
    return [];
  }
}
