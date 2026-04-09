import 'package:flutter/material.dart';
import 'package:sirat_i_nur/core/services/offline_audio_service.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

String resolveOfflineDownloadResultMessage(
  AppLocalizations l10n,
  String reciterName,
  OfflineDownloadBatchResult result,
) {
  if (result.wasCanceled) {
    return l10n.downloadCanceledForReciter(reciterName);
  }

  if (!result.hasFailures) {
    return l10n.downloadFinishedForReciter(reciterName);
  }

  return l10n.downloadPartiallyFinishedForReciter(
    reciterName,
    result.succeededSurahs.toString(),
    result.totalSurahs.toString(),
    result.failedCount.toString(),
  );
}

class OfflineDownloadsPage extends StatefulWidget {
  const OfflineDownloadsPage({super.key});

  @override
  State<OfflineDownloadsPage> createState() => _OfflineDownloadsPageState();
}

class _OfflineDownloadsPageState extends State<OfflineDownloadsPage> {
  final Map<String, double> _downloadProgress = {};
  final Map<String, int> _downloadedCount = {};
  final Map<String, bool> _isDownloading = {};
  final Map<String, bool> _cancelRequested = {};
  final Map<String, String> _downloadStatusText = {};

  bool _isLoading = true;
  double _totalSizeMb = 0;

  @override
  void initState() {
    super.initState();
    _loadStatus();
  }

  Future<void> _loadStatus() async {
    setState(() => _isLoading = true);
    final counts = await OfflineAudioService.getDownloadedCountByReciter();
    final size = await OfflineAudioService.getTotalDownloadedSize();

    if (!mounted) return;
    setState(() {
      _downloadedCount
        ..clear()
        ..addAll(counts);
      _totalSizeMb = size;
      _isLoading = false;
    });
  }

  Future<void> _startDownload(String reciterId) async {
    if (_isDownloading[reciterId] == true) return;
    final l10n = AppLocalizations.of(context)!;

    setState(() {
      _isDownloading[reciterId] = true;
      _cancelRequested[reciterId] = false;
      _downloadProgress[reciterId] = 0;
      _downloadStatusText[reciterId] = l10n.downloadPreparing;
    });

    final downloaded = await OfflineAudioService.getDownloadedSurahs(reciterId);
    final allUrls = await OfflineReciters.getAllSurahUrls(reciterId);
    final missingSources = missingQuranSurahAudioSources(allUrls);
    final remainingUrls = <int, String>{};
    for (final entry in allUrls.entries) {
      if (!downloaded.contains(entry.key)) {
        remainingUrls[entry.key] = entry.value;
      }
    }

    if (missingSources.length == 114) {
      if (!mounted) return;
      setState(() {
        _isDownloading[reciterId] = false;
        _downloadProgress.remove(reciterId);
        _cancelRequested[reciterId] = false;
        _downloadStatusText.remove(reciterId);
      });
      _showSnack(l10n.quranAudioSourcesUnavailable);
      return;
    }

    if (missingSources.isNotEmpty) {
      if (!mounted) return;
      setState(() {
        _isDownloading[reciterId] = false;
        _downloadProgress.remove(reciterId);
        _cancelRequested[reciterId] = false;
        _downloadStatusText.remove(reciterId);
      });
      _showSnack(
        l10n.quranAudioSourcesIncomplete(
          (114 - missingSources.length).toString(),
          '114',
        ),
      );
      return;
    }

    if (remainingUrls.isEmpty) {
      if (!mounted) return;
      setState(() {
        _isDownloading[reciterId] = false;
        _downloadProgress.remove(reciterId);
        _cancelRequested[reciterId] = false;
        _downloadStatusText.remove(reciterId);
      });
      final l10n = AppLocalizations.of(context)!;
      _showSnack(l10n.downloadCompleted);
      return;
    }

    final result = await OfflineAudioService.downloadAllSurahs(
      reciterId: reciterId,
      surahUrls: remainingUrls,
      onProgress: (progress, surahNumber, totalSurahs) {
        if (!mounted) return;
        setState(() {
          _downloadProgress[reciterId] = progress.clamp(0.0, 1.0);
          final l10n = AppLocalizations.of(context)!;
          _downloadStatusText[reciterId] = l10n.downloadingSurah(
            surahNumber.toString(),
            totalSurahs.toString(),
          );
        });
      },
      onSurahComplete: (surahNumber, success) {
        if (!success) {
          debugPrint('Failed to download surah $surahNumber for $reciterId');
        }
      },
      shouldCancel: () => _cancelRequested[reciterId] == true,
    );

    if (!mounted) return;
    final updatedDownloaded = await OfflineAudioService.getDownloadedSurahs(
      reciterId,
    );
    final updatedSize = await OfflineAudioService.getTotalDownloadedSize();

    setState(() {
      _downloadedCount[reciterId] = updatedDownloaded.length;
      _totalSizeMb = updatedSize;
      _isDownloading[reciterId] = false;
      _downloadProgress.remove(reciterId);
      _cancelRequested[reciterId] = false;
      _downloadStatusText.remove(reciterId);
    });

    _showSnack(
      resolveOfflineDownloadResultMessage(
        l10n,
        _reciterName(reciterId),
        result,
      ),
    );
  }

  void _cancelDownload(String reciterId) {
    if (_isDownloading[reciterId] != true) return;
    setState(() => _cancelRequested[reciterId] = true);
  }

  Future<void> _deletePack(String reciterId) async {
    await OfflineAudioService.deleteReciterAudio(reciterId);
    final updatedSize = await OfflineAudioService.getTotalDownloadedSize();

    if (!mounted) return;
    setState(() {
      _downloadedCount[reciterId] = 0;
      _totalSizeMb = updatedSize;
      _downloadProgress.remove(reciterId);
      _isDownloading[reciterId] = false;
      _cancelRequested[reciterId] = false;
      _downloadStatusText.remove(reciterId);
    });
    final l10n = AppLocalizations.of(context)!;
    _showSnack(l10n.deletedOfflineFilesForReciter(_reciterName(reciterId)));
  }

  String _reciterName(String reciterId) =>
      OfflineReciters.reciters[reciterId]?['name'] ?? reciterId;

  void _showSnack(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    final reciterIds = OfflineReciters.reciters.keys.toList();
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.offlineDownloadManager),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: _loadStatus,
          ),
        ],
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(color: AppColors.emerald),
            )
          : SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.offlineQuranAudioPacks,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    l10n.storedOnDeviceMb(_totalSizeMb.toStringAsFixed(1)),
                    style: TextStyle(
                      fontSize: 13,
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurface.withValues(alpha: 0.6),
                    ),
                  ),
                  const SizedBox(height: 14),
                  ...reciterIds.asMap().entries.map((entry) {
                    final index = entry.key;
                    final reciterId = entry.value;
                    final downloaded = _downloadedCount[reciterId] ?? 0;
                    final progress = _downloadProgress[reciterId];
                    final isDownloading = _isDownloading[reciterId] == true;
                    final isComplete = downloaded >= 114;

                    return AnimatedPremiumCard(
                      animationDelay: index * 70,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: isComplete
                                      ? AppColors.emeraldSurface
                                      : AppColors.goldLight,
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Icon(
                                  isComplete
                                      ? Icons.check_circle_rounded
                                      : Icons.graphic_eq_rounded,
                                  color: isComplete
                                      ? AppColors.emerald
                                      : AppColors.gold,
                                  size: 24,
                                ),
                              ),
                              const SizedBox(width: 14),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      _reciterName(reciterId),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 15,
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      l10n.downloadedSurahProgress(
                                        downloaded.toString(),
                                        '114',
                                      ),
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSurface
                                            .withValues(alpha: 0.55),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (!isDownloading)
                                PopupMenuButton<String>(
                                  icon: const Icon(Icons.more_vert_rounded),
                                  onSelected: (action) {
                                    if (action == 'download') {
                                      _startDownload(reciterId);
                                    }
                                    if (action == 'delete') {
                                      _deletePack(reciterId);
                                    }
                                  },
                                  itemBuilder: (context) => [
                                    PopupMenuItem(
                                      value: 'download',
                                      child: Text(
                                        isComplete
                                            ? l10n.redownloadMissingRepair
                                            : (downloaded > 0
                                                  ? l10n.resumeDownload
                                                  : l10n.downloadAction),
                                      ),
                                    ),
                                    if (downloaded > 0)
                                      PopupMenuItem(
                                        value: 'delete',
                                        child: Text(l10n.deleteDownloadedFiles),
                                      ),
                                  ],
                                ),
                              if (isDownloading)
                                IconButton(
                                  icon: const Icon(
                                    Icons.cancel_rounded,
                                    color: Colors.redAccent,
                                  ),
                                  onPressed: () => _cancelDownload(reciterId),
                                ),
                            ],
                          ),
                          if (isDownloading || progress != null) ...[
                            const SizedBox(height: 10),
                            LinearProgressIndicator(
                              value: progress ?? 0,
                              backgroundColor: AppColors.emeraldSurface,
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                AppColors.emerald,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            const SizedBox(height: 6),
                            Row(
                              children: [
                                Text(
                                  '${(((progress ?? 0) * 100).clamp(0, 100)).toStringAsFixed(0)}%',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface
                                        .withValues(alpha: 0.55),
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  _cancelRequested[reciterId] == true
                                      ? l10n.downloadCancelling
                                      : (_downloadStatusText[reciterId] ??
                                            l10n.downloading),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface
                                        .withValues(alpha: 0.55),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ],
                      ),
                    );
                  }),
                ],
              ),
            ),
    );
  }
}
