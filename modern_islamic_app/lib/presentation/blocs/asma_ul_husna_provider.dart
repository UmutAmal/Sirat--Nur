import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:sirat_i_nur/core/constants/asma_ul_husna_data.dart';
import 'package:sirat_i_nur/domain/entities/asma_ul_husna_entity.dart';

final asmaUlHusnaListProvider = Provider<List<AsmaUlHusnaEntity>>((ref) {
  return AsmaUlHusnaData.names.map((e) => AsmaUlHusnaEntity(
    id: e['id'],
    arabic: e['arabic'],
    transliteration: e['transliteration'],
    translations: Map<String, String>.from(e['translations']),
    audioUrl: e['audioUrl'],
  )).toList();
});

// A localized provider that resolves the translation based on the locale
final localizedAsmaProvider = Provider.family<List<Map<String, dynamic>>, String>((ref, localeCode) {
  final list = ref.watch(asmaUlHusnaListProvider);

  return list.map((e) {
    String translation = e.translations[localeCode] ?? e.translations['en'] ?? 'Translation missing';
    return {
      'id': e.id,
      'arabic': e.arabic,
      'transliteration': e.transliteration,
      'meaning': translation,
      // Overriding with 100% High-Quality Mishary Rashid Arabic Audio
      'audioUrl': 'https://static.islamic.network/audio/asma-ul-husna/mishari_rashid_alafasy/${e.id}.mp3',
    };
  }).toList();
});

// Audio Player singleton for playing the names
final asmaAudioPlayerProvider = Provider<AudioPlayer>((ref) {
  final player = AudioPlayer();
  ref.onDispose(() => player.dispose());
  return player;
});
