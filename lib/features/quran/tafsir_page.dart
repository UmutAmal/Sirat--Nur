import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/services/tafsir_local_service.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

String buildTafsirTitle(
  AppLocalizations l10n,
  String surahName,
  int surahNumber,
) {
  final trimmedName = surahName.trim();
  final titleName = trimmedName.isEmpty
      ? '${l10n.surah} $surahNumber'
      : trimmedName;
  return '$titleName • ${l10n.tafsir}';
}

String buildTafsirMissingMessage(AppLocalizations l10n, {int? ayahNumber}) {
  if (ayahNumber == null) {
    return l10n.tafsirNoSurahFound;
  }

  return l10n.tafsirNoAyahFound(ayahNumber.toString());
}

String buildTafsirProgressMessage(
  AppLocalizations l10n,
  String rawMessage,
  double progress,
) {
  if (rawMessage.isEmpty) {
    return '${(progress * 100).toStringAsFixed(0)}%';
  }

  final segments = rawMessage.split(':');
  if (segments.length == 3 && segments[0] == 'download') {
    return l10n.tafsirDownloadingProgress(segments[1], segments[2]);
  }

  if (segments.length == 3 && segments[0] == 'load') {
    return l10n.tafsirLoadingProgress(segments[1], segments[2]);
  }

  return rawMessage;
}

String localizeTafsirError(AppLocalizations l10n, Object error) {
  if (error is TafsirException) {
    switch (error.code) {
      case 'api_status':
        return l10n.tafsirApiStatusError(error.details ?? '?');
      case 'no_entries':
        return l10n.tafsirNoEntriesReturned;
    }
  }

  return l10n.tafsirLoadFailed;
}

class TafsirPage extends ConsumerStatefulWidget {
  final int surahNumber;
  final String surahName;
  final int? ayahNumber;

  const TafsirPage({
    super.key,
    required this.surahNumber,
    required this.surahName,
    this.ayahNumber,
  });

  @override
  ConsumerState<TafsirPage> createState() => _TafsirPageState();
}

class _TafsirPageState extends ConsumerState<TafsirPage> {
  List<Map<String, dynamic>> _tafsirs = const [];
  String _selectedTafsir = TafsirLocalService.defaultTafsirSourceId;
  bool _isLoading = true;
  String? _error;
  double _progress = 0;
  String _progressMessage = '';

  @override
  void initState() {
    super.initState();
    _loadTafsir();
  }

  Future<void> _loadTafsir({bool forceRefresh = false}) async {
    final l10n = AppLocalizations.of(context)!;

    setState(() {
      _isLoading = true;
      _error = null;
      _progress = 0;
      _progressMessage = '';
    });

    try {
      final loader = TafsirLoader(
        surahNumber: widget.surahNumber,
        tafsirSource: _selectedTafsir,
      );

      final loaded = await loader.loadTafsir(
        forceRefresh: forceRefresh,
        onProgress: (progress, message) {
          if (!mounted) return;
          setState(() {
            _progress = progress.clamp(0.0, 1.0);
            _progressMessage = message;
          });
        },
      );

      final filtered = widget.ayahNumber == null
          ? loaded
          : loaded
                .where((row) => row['verse_number'] == widget.ayahNumber)
                .toList();

      if (!mounted) return;
      setState(() {
        _tafsirs = filtered;
        _isLoading = false;
      });

      if (_tafsirs.isEmpty) {
        setState(() {
          _error = buildTafsirMissingMessage(
            l10n,
            ayahNumber: widget.ayahNumber,
          );
        });
      }
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _isLoading = false;
        _error = localizeTafsirError(l10n, error);
      });
    }
  }

  String _sourceName(String id) {
    for (final item in TafsirLocalService.availableTafsirs) {
      if (item['id'] == id) return item['name'] ?? id;
    }
    return id;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          buildTafsirTitle(l10n, widget.surahName, widget.surahNumber),
        ),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.menu_book_rounded),
            tooltip: l10n.tafsirSourceLabel,
            onSelected: (value) {
              if (_selectedTafsir == value) return;
              setState(() => _selectedTafsir = value);
              _loadTafsir();
            },
            itemBuilder: (context) => TafsirLocalService.availableTafsirs
                .map(
                  (source) => PopupMenuItem<String>(
                    value: source['id'],
                    child: Row(
                      children: [
                        if (_selectedTafsir == source['id'])
                          Icon(
                            Icons.check_rounded,
                            size: 18,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        if (_selectedTafsir == source['id'])
                          const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            source['name'] ?? source['id'] ?? '-',
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () => _loadTafsir(forceRefresh: true),
            tooltip: l10n.refreshAction,
          ),
        ],
      ),
      body: _buildBody(l10n),
    );
  }

  Widget _buildBody(AppLocalizations l10n) {
    if (_isLoading && _tafsirs.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(height: 14),
              Text(
                l10n.tafsirLoading,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              if (_progress > 0) ...[
                const SizedBox(height: 14),
                SizedBox(
                  width: 220,
                  child: LinearProgressIndicator(value: _progress),
                ),
                const SizedBox(height: 8),
                Text(
                  buildTafsirProgressMessage(l10n, _progressMessage, _progress),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ],
          ),
        ),
      );
    }

    if (_error != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline_rounded,
                size: 58,
                color: Theme.of(context).colorScheme.error,
              ),
              const SizedBox(height: 14),
              Text(
                l10n.appErrorOccurred,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 10),
              Text(
                _error!,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () => _loadTafsir(forceRefresh: true),
                icon: const Icon(Icons.refresh_rounded),
                label: Text(l10n.retry),
              ),
            ],
          ),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: _tafsirs.length,
      itemBuilder: (context, index) {
        final entry = _tafsirs[index];
        final verseNumber = entry['verse_number']?.toString() ?? '-';
        final tafsirText = (entry['tafsir_text'] ?? '').toString().trim();

        return Padding(
          padding: const EdgeInsets.only(bottom: 14),
          child: PremiumCard(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(
                          context,
                        ).colorScheme.primary.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        l10n.ayahLabel(verseNumber),
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      _sourceName(_selectedTafsir),
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withValues(alpha: 0.6),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                SelectableText(
                  tafsirText.isEmpty ? l10n.tafsirNoTextForAyah : tafsirText,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(height: 1.65, fontSize: 15),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
