import 'package:flutter/material.dart';
import 'package:sirat_i_nur/core/services/offline_audio_service.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';

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

    setState(() {
      _isDownloading[reciterId] = true;
      _cancelRequested[reciterId] = false;
      _downloadProgress[reciterId] = 0;
      _downloadStatusText[reciterId] = 'Preparing download...';
    });

    final downloaded = await OfflineAudioService.getDownloadedSurahs(reciterId);
    final allUrls = OfflineReciters.getAllSurahUrls(reciterId);
    final remainingUrls = <int, String>{};
    for (final entry in allUrls.entries) {
      if (!downloaded.contains(entry.key)) {
        remainingUrls[entry.key] = entry.value;
      }
    }

    if (remainingUrls.isEmpty) {
      if (!mounted) return;
      setState(() {
        _isDownloading[reciterId] = false;
        _downloadProgress.remove(reciterId);
      });
      _showSnack('All surahs already downloaded for this reciter.');
      return;
    }

    await OfflineAudioService.downloadAllSurahs(
      reciterId: reciterId,
      surahUrls: remainingUrls,
      onProgress: (progress, surahNumber, totalSurahs) {
        if (!mounted) return;
        setState(() {
          _downloadProgress[reciterId] = progress.clamp(0.0, 1.0);
          _downloadStatusText[reciterId] = 'Downloading surah $surahNumber / $totalSurahs';
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
    final updatedDownloaded = await OfflineAudioService.getDownloadedSurahs(reciterId);
    final updatedSize = await OfflineAudioService.getTotalDownloadedSize();
    final canceled = _cancelRequested[reciterId] == true;

    setState(() {
      _downloadedCount[reciterId] = updatedDownloaded.length;
      _totalSizeMb = updatedSize;
      _isDownloading[reciterId] = false;
      _downloadProgress.remove(reciterId);
      _cancelRequested[reciterId] = false;
      _downloadStatusText.remove(reciterId);
    });

    _showSnack(
      canceled
          ? 'Download canceled for ${_reciterName(reciterId)}.'
          : 'Download completed for ${_reciterName(reciterId)}.',
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
    _showSnack('Deleted offline files for ${_reciterName(reciterId)}.');
  }

  String _reciterName(String reciterId) =>
      OfflineReciters.reciters[reciterId]?['name'] ?? reciterId;

  void _showSnack(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    final reciterIds = OfflineReciters.reciters.keys.toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Offline Manager'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: _loadStatus,
          ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator(color: AppColors.emerald))
          : SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Offline Quran Audio Packs',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Stored on device: ${_totalSizeMb.toStringAsFixed(1)} MB',
                    style: TextStyle(
                      fontSize: 13,
                      color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
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
                                  color: isComplete ? AppColors.emeraldSurface : AppColors.goldLight,
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Icon(
                                  isComplete ? Icons.check_circle_rounded : Icons.graphic_eq_rounded,
                                  color: isComplete ? AppColors.emerald : AppColors.gold,
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
                                      style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      '$downloaded / 114 surahs downloaded',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.55),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (!isDownloading)
                                PopupMenuButton<String>(
                                  icon: const Icon(Icons.more_vert_rounded),
                                  onSelected: (action) {
                                    if (action == 'download') _startDownload(reciterId);
                                    if (action == 'delete') _deletePack(reciterId);
                                  },
                                  itemBuilder: (context) => [
                                    PopupMenuItem(
                                      value: 'download',
                                      child: Text(
                                        isComplete ? 'Redownload Missing/Repair' : (downloaded > 0 ? 'Resume Download' : 'Download'),
                                      ),
                                    ),
                                    if (downloaded > 0) const PopupMenuItem(value: 'delete', child: Text('Delete Downloaded Files')),
                                  ],
                                ),
                              if (isDownloading)
                                IconButton(
                                  icon: const Icon(Icons.cancel_rounded, color: Colors.redAccent),
                                  onPressed: () => _cancelDownload(reciterId),
                                ),
                            ],
                          ),
                          if (isDownloading || progress != null) ...[
                            const SizedBox(height: 10),
                            LinearProgressIndicator(
                              value: progress ?? 0,
                              backgroundColor: AppColors.emeraldSurface,
                              valueColor: const AlwaysStoppedAnimation<Color>(AppColors.emerald),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            const SizedBox(height: 6),
                            Row(
                              children: [
                                Text(
                                  '${(((progress ?? 0) * 100).clamp(0, 100)).toStringAsFixed(0)}%',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.55),
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  _cancelRequested[reciterId] == true ? 'Cancelling...' : (_downloadStatusText[reciterId] ?? 'Downloading...'),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.55),
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



