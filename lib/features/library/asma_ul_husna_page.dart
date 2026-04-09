import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/constants/asma_ul_husna_data.dart';
import 'package:sirat_i_nur/core/providers/supabase_providers.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';
import 'package:sirat_i_nur/core/services/audio_player_service.dart';

List<Map<String, dynamic>> resolveAsmaUlHusnaItems(
  AsyncValue<List<Map<String, dynamic>>> asyncNames,
) {
  return asyncNames.valueOrNull ?? buildBundledAsmaUlHusnaFallback();
}

bool hasPlayableAsmaAudio(Map<String, dynamic> item) {
  final audioUrl = item['audioUrl'];
  return audioUrl is String && audioUrl.trim().isNotEmpty;
}

bool matchesAsmaSearchQuery(Map<String, dynamic> item, String query) {
  final normalizedQuery = query.trim().toLowerCase();
  if (normalizedQuery.isEmpty) {
    return true;
  }

  final transliteration = (item['transliteration'] ?? '').toString().toLowerCase();
  final arabic = (item['arabic'] ?? '').toString().toLowerCase();
  final translations = item['translations'];

  final translationMatch = translations is Map &&
      translations.values.any(
        (value) => value is String && value.toLowerCase().contains(normalizedQuery),
      );

  return transliteration.contains(normalizedQuery) ||
      arabic.contains(normalizedQuery) ||
      translationMatch;
}

class AsmaUlHusnaPage extends ConsumerStatefulWidget {
  const AsmaUlHusnaPage({super.key});

  @override
  ConsumerState<AsmaUlHusnaPage> createState() => _AsmaUlHusnaPageState();
}

class _AsmaUlHusnaPageState extends ConsumerState<AsmaUlHusnaPage> {
  String _searchQuery = '';
  final _audioService = AudioPlayerService();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final locale = Localizations.localeOf(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final names = resolveAsmaUlHusnaItems(ref.watch(asmaUlHusnaProvider));

    final filteredNames = names.where((name) {
      return matchesAsmaSearchQuery(name, _searchQuery);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.asmaulHusna),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: TextField(
              onChanged: (val) => setState(() => _searchQuery = val),
              decoration: InputDecoration(
                hintText: l10n.search,
                prefixIcon: const Icon(Icons.search_rounded),
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
                filled: true,
                fillColor: isDark ? AppColors.darkSurface : Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.8,
        ),
        itemCount: filteredNames.length,
        itemBuilder: (context, index) {
          final item = filteredNames[index];
          final translations = item['translations'] as Map<String, dynamic>;
          final meaning =
              translations[locale.languageCode] ?? translations['en'] ?? '';
          final hasAudio = hasPlayableAsmaAudio(item);

          return Hero(
            tag: 'asma_${item['id']}',
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: hasAudio ? () => _playAudio(item['audioUrl']) : null,
                borderRadius: BorderRadius.circular(24),
                child: Container(
                  decoration: BoxDecoration(
                    color: isDark ? AppColors.darkSurface : Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.emerald.withValues(alpha: 0.08),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                    border: Border.all(
                      color: AppColors.emerald.withValues(alpha: 0.15),
                      width: 1,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 12,
                        left: 12,
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: AppColors.emerald.withValues(alpha: 0.1),
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            '${item['id']}',
                            style: const TextStyle(
                              color: AppColors.emerald,
                              fontWeight: FontWeight.w900,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 12),
                            Text(
                              item['arabic'],
                              style: const TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w900,
                                fontFamily:
                                    'Amiri', // Assuming Amiri is available or falls back
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              item['transliteration'],
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w800,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 6),
                            Expanded(
                              child: Text(
                                meaning,
                                style: TextStyle(
                                  fontSize: 11,
                                  height: 1.3,
                                  color: Theme.of(context).colorScheme.onSurface
                                      .withValues(alpha: 0.6),
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Icon(
                              hasAudio
                                  ? Icons.volume_up_rounded
                                  : Icons.volume_off_rounded,
                              size: 16,
                              color: hasAudio
                                  ? AppColors.emerald
                                  : Theme.of(context).colorScheme.onSurface
                                        .withValues(alpha: 0.35),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _playAudio(String? url) async {
    if (url == null || url.isEmpty) return;
    try {
      await _audioService.playUrl(url);
    } catch (e) {
      if (mounted) {
        final l10n = AppLocalizations.of(context)!;
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.audioPlayFailed)));
      }
    }
  }
}
