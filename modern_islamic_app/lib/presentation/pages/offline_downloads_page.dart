import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/services/download_manager.dart';
import 'package:sirat_i_nur/core/services/iap_service.dart';
import 'package:sirat_i_nur/presentation/widgets/premium_card.dart';
import 'package:sirat_i_nur/core/utils/l10n_utils.dart';

class OfflineDownloadsPage extends ConsumerStatefulWidget {
  const OfflineDownloadsPage({super.key});

  @override
  ConsumerState<OfflineDownloadsPage> createState() => _OfflineDownloadsPageState();
}

class _OfflineDownloadsPageState extends ConsumerState<OfflineDownloadsPage> {
  bool _fileExists = false;
  double _fileSize = 0.0;
  final String _fileName = 'quran_audio_pack.zip';

  @override
  void initState() {
    super.initState();
    _checkFileStatus();
  }

  Future<void> _checkFileStatus() async {
    final manager = ref.read(downloadManagerProvider);
    final exists = await manager.hasOfflinePack(_fileName);
    double size = 0.0;
    if (exists) {
      size = await manager.getFileSize(_fileName);
    }
    setState(() {
      _fileExists = exists;
      _fileSize = size;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isPro = ref.watch(proStatusProvider);
    final isDownloading = ref.watch(isDownloadingProvider);
    final progress = ref.watch(downloadProgressProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(trEnGlobal(context, tr: 'Çevrimdışı Yönetici', en: 'Offline Manager')),
        actions: [
          if (_fileExists)
            IconButton(
              icon: const Icon(Icons.delete_outline, color: Colors.red),
              onPressed: () => _confirmDelete(),
            ),
        ],
      ),
      body: !isPro 
        ? _buildPremiumLocked(context) 
        : Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  trEnGlobal(context, tr: 'Çevrimdışı Veriyi Yönet', en: 'Manage Offline Data'),
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  trEnGlobal(
                    context,
                    tr: 'Sure tilavetlerini indirerek internetsiz her yerde dinleyin.',
                    en: 'Download Surah recitations to listen anywhere without internet.',
                  ),
                  style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant),
                ),
                const SizedBox(height: 32),
                
                PremiumCard(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              trEnGlobal(context, tr: 'Tam Kur\'an Ses Paketi', en: 'Complete Quran Audio'),
                              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(_fileExists ? '${_fileSize.toStringAsFixed(1)} MB' : '~ 750 MB', style: const TextStyle(color: Colors.grey)),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          _fileExists
                              ? trEnGlobal(context, tr: 'Durum: İndirildi', en: 'Status: Downloaded')
                              : trEnGlobal(context, tr: 'Durum: İndirilmedi', en: 'Status: Not Downloaded'),
                        ),
                        const SizedBox(height: 16),
                        
                        if (isDownloading) ...[
                          LinearProgressIndicator(
                            value: progress,
                            backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            trEnGlobal(
                              context,
                              tr: '%${(progress * 100).toStringAsFixed(1)} indirildi',
                              en: '${(progress * 100).toStringAsFixed(1)}% Downloaded',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ] else if (!_fileExists) ...[
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(double.infinity, 48),
                            ),
                            icon: const Icon(Icons.download),
                            label: Text(trEnGlobal(context, tr: 'Paketi İndir', en: 'Download Pack')),
                            onPressed: () {
                              ref.read(downloadManagerProvider).downloadOfflinePack(
                                'https://github.com/reallinfo/quran-json/raw/master/quran.zip', 
                                _fileName,
                                onProgress: (progress) {
                                  ref.read(downloadProgressProvider.notifier).state = progress;
                                  ref.read(isDownloadingProvider.notifier).state = true;
                                },
                                onSuccess: (path) {
                                  ref.read(isDownloadingProvider.notifier).state = false;
                                  ref.read(downloadProgressProvider.notifier).state = 0.0;
                                  _checkFileStatus();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        trEnGlobal(context, tr: 'İndirme tamamlandı!', en: 'Download complete!'),
                                      ),
                                    ),
                                  );
                                },
                                onError: (err) {
                                  ref.read(isDownloadingProvider.notifier).state = false;
                                  ref.read(downloadProgressProvider.notifier).state = 0.0;
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        trEnGlobal(context, tr: 'İndirme başarısız: $err', en: 'Download Failed: $err'),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ] else ...[
                          OutlinedButton.icon(
                            style: OutlinedButton.styleFrom(minimumSize: const Size(double.infinity, 48)),
                            icon: const Icon(Icons.check_circle, color: Colors.green),
                            label: Text(trEnGlobal(context, tr: 'İndirildi ve Hazır', en: 'Downloaded & Ready')),
                            onPressed: null,
                          ),
                        ]
                      ],
                    ),
                  ),
              ],
            ),
          ),
    );
  }

  void _confirmDelete() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(trEnGlobal(context, tr: 'İndirmeyi Sil?', en: 'Delete Download?')),
        content: Text(
          trEnGlobal(
            context,
            tr: 'Bu işlem çevrimdışı ses paketini cihazdan kaldırır. Oynatmak için internete ihtiyacınız olacak.',
            en: 'This will remove the offline audio pack from your device. You will need internet for playback.',
          ),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text(trEnGlobal(context, tr: 'İptal', en: 'Cancel'))),
          TextButton(
            onPressed: () async {
              final navigator = Navigator.of(context);
              await ref.read(downloadManagerProvider).deleteOfflinePack(_fileName);
              _checkFileStatus();
              navigator.pop();
            },
            child: Text(
              trEnGlobal(context, tr: 'Sil', en: 'Delete'),
              style: const TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPremiumLocked(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock, size: 80, color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 24),
            Text(
              trEnGlobal(context, tr: 'Premium Özellik', en: 'Premium Feature'),
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              trEnGlobal(
                context,
                tr: 'Çevrimdışı indirmeler yalnızca Sirat-ı Nur Premium üyelerine özeldir. Tüm Kur\'an\'ı indirip internetsiz her yerde dinleyin.',
                en: 'Offline Downloads are available exclusively for Sirat-ı Nur Premium members. Download the entire Quran and listen anywhere without internet.',
              ),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 56),
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
              ),
              onPressed: () {
                context.push('/paywall');
              },
              child: Text(trEnGlobal(context, tr: 'Şimdi Yükselt', en: 'Upgrade Now'), style: const TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
