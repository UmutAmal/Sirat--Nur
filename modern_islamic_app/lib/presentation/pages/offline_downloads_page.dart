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
        title: Text(
          trEnGlobal(context, tr: 'Çevrimdışı Yönetici', en: 'Offline Manager'),
          style: const TextStyle(fontWeight: FontWeight.w900),
        ),
        actions: [
          if (_fileExists)
            IconButton(
              icon: const Icon(Icons.delete_sweep_rounded, color: Colors.redAccent),
              onPressed: () => _confirmDelete(),
            ),
        ],
      ),
      body: !isPro 
        ? _buildPremiumLocked(context) 
        : SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  trEnGlobal(context, tr: 'Çevrimdışı Veri', en: 'Offline Data'),
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w900,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  trEnGlobal(
                    context,
                    tr: 'Tilavetleri indirerek internetsiz erişim sağlayın.',
                    en: 'Download recitations for seamless offline access.',
                  ),
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
                  ),
                ),
                const SizedBox(height: 32),
                
                AnimatedPremiumCard(
                  animationDelay: 100,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    trEnGlobal(context, tr: 'Kur\'an Ses Paketi', en: 'Quran Audio Pack'),
                                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    _fileExists 
                                      ? trEnGlobal(context, tr: 'Cihazda yüklü', en: 'Installed on device')
                                      : trEnGlobal(context, tr: 'Henüz indirilmedi', en: 'Not downloaded yet'),
                                    style: TextStyle(
                                      fontSize: 12, 
                                      fontWeight: FontWeight.w700,
                                      color: _fileExists ? const Color(0xFF2E7D32) : Colors.orange,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.05),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                _fileExists ? '${_fileSize.toStringAsFixed(1)} MB' : '~ 750 MB', 
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        
                        if (isDownloading) ...[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: LinearProgressIndicator(
                              value: progress,
                              minHeight: 8,
                              backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                trEnGlobal(context, tr: 'İndiriliyor...', en: 'Downloading...'),
                                style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
                              ),
                              Text(
                                '${(progress * 100).toStringAsFixed(1)}%',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900, 
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ] else if (!_fileExists) ...[
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(double.infinity, 56),
                              backgroundColor: Theme.of(context).colorScheme.primary,
                              foregroundColor: Colors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                            ),
                            icon: const Icon(Icons.cloud_download_rounded),
                            label: Text(
                              trEnGlobal(context, tr: 'Şimdi İndir', en: 'Download Now'),
                              style: const TextStyle(fontWeight: FontWeight.w900),
                            ),
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
                                      behavior: SnackBarBehavior.floating,
                                      content: Text(trEnGlobal(context, tr: 'İndirme tamamlandı!', en: 'Download complete!')),
                                    ),
                                  );
                                },
                                onError: (err) {
                                  ref.read(isDownloadingProvider.notifier).state = false;
                                  ref.read(downloadProgressProvider.notifier).state = 0.0;
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      behavior: SnackBarBehavior.floating,
                                      backgroundColor: Colors.red,
                                      content: Text(trEnGlobal(context, tr: 'Hata: $err', en: 'Error: $err')),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ] else ...[
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            decoration: BoxDecoration(
                              color: const Color(0xFF2E7D32).withValues(alpha: 0.05),
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: const Color(0xFF2E7D32).withValues(alpha: 0.1)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.check_circle_rounded, color: Color(0xFF2E7D32)),
                                const SizedBox(width: 12),
                                Text(
                                  trEnGlobal(context, tr: 'Kullanıma Hazır', en: 'Ready for Offline Use'),
                                  style: const TextStyle(color: Color(0xFF2E7D32), fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                          ),
                        ]
                      ],
                    ),
                  ),
                const SizedBox(height: 32),
                _buildInfoCard(context),
              ],
            ),
          ),
    );
  }

  Widget _buildInfoCard(BuildContext context) {
    return AnimatedPremiumCard(
      animationDelay: 200,
      child: Row(
        children: [
          Icon(Icons.info_outline_rounded, color: Theme.of(context).colorScheme.primary),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              trEnGlobal(
                context, 
                tr: 'İndirilen dosyalar çevrimdışı kullanım için güvenli bir şekilde saklanır.',
                en: 'Downloaded files are stored securely for offline access.'
              ),
              style: TextStyle(
                fontSize: 12, 
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _confirmDelete() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        title: Text(trEnGlobal(context, tr: 'Paketi Sil?', en: 'Delete Pack?'), style: const TextStyle(fontWeight: FontWeight.w900)),
        content: Text(
          trEnGlobal(
            context,
            tr: 'Bu işlem çevrimdışı ses paketini kaldırır. Dinlemek için internet gerekecektir.',
            en: 'This will remove the offline pack. Internet will be required for playback.',
          ),
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text(trEnGlobal(context, tr: 'İptal', en: 'Cancel'))),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              foregroundColor: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
            onPressed: () async {
              final navigator = Navigator.of(context);
              await ref.read(downloadManagerProvider).deleteOfflinePack(_fileName);
              _checkFileStatus();
              navigator.pop();
            },
            child: Text(trEnGlobal(context, tr: 'Sil', en: 'Delete'), style: const TextStyle(fontWeight: FontWeight.w900)),
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
            Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.05),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.lock_rounded, size: 80, color: Theme.of(context).colorScheme.primary),
            ),
            const SizedBox(height: 32),
            Text(
              trEnGlobal(context, tr: 'Premium Gerekli', en: 'Premium Required'),
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 16),
            Text(
              trEnGlobal(
                context,
                tr: 'Çevrimdışı indirmeler yalnızca Sirat-ı Nur Premium üyelerine özeldir.',
                en: 'Offline Downloads are available exclusively for Sirat-ı Nur Premium members.',
              ),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15, 
                height: 1.5,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
              ),
            ),
            const SizedBox(height: 40),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.primary,
                    const Color(0xFF2E7D32),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                    blurRadius: 15,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () => context.push('/paywall'),
                child: Text(
                  trEnGlobal(context, tr: 'Hemen Yükselt', en: 'Upgrade Now'),
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
