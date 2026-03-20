import 'package:flutter/material.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';

class OfflineDownloadsPage extends StatefulWidget {
  const OfflineDownloadsPage({super.key});
  @override
  State<OfflineDownloadsPage> createState() => _OfflineDownloadsPageState();
}

class _OfflineDownloadsPageState extends State<OfflineDownloadsPage> {
  final Map<String, double> _downloadProgress = {};
  final Set<String> _downloaded = {};

  void _download(String id) {
    setState(() => _downloadProgress[id] = 0.0);
    _simulateDownload(id);
  }

  void _simulateDownload(String id) async {
    for (int i = 0; i <= 10; i++) {
      await Future.delayed(const Duration(milliseconds: 200));
      if (!mounted) return;
      setState(() => _downloadProgress[id] = i / 10);
    }
    setState(() {
      _downloadProgress.remove(id);
      _downloaded.add(id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Offline Manager')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Audio Packs', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900)),
            const SizedBox(height: 12),
            ..._packs.asMap().entries.map((e) {
              final i = e.key;
              final pack = e.value;
              final isDownloaded = _downloaded.contains(pack.id);
              final progress = _downloadProgress[pack.id];
              final isDownloading = progress != null;

              return AnimatedPremiumCard(
                animationDelay: i * 80,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: isDownloaded ? AppColors.emeraldSurface : AppColors.goldLight,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Icon(
                        isDownloaded ? Icons.check_circle_rounded : Icons.cloud_download_rounded,
                        color: isDownloaded ? AppColors.emerald : AppColors.gold, size: 24,
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(pack.name, style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 15)),
                        const SizedBox(height: 2),
                        Text(pack.size, style: TextStyle(fontSize: 12,
                          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5))),
                        if (isDownloading) ...[
                          const SizedBox(height: 8),
                          LinearProgressIndicator(
                            value: progress,
                            backgroundColor: AppColors.emeraldSurface,
                            valueColor: const AlwaysStoppedAnimation<Color>(AppColors.emerald),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ],
                      ],
                    )),
                    if (!isDownloaded && !isDownloading)
                      IconButton(
                        icon: const Icon(Icons.download_rounded, color: AppColors.emerald),
                        onPressed: () => _download(pack.id),
                      ),
                    if (isDownloaded)
                      const Text('✓', style: TextStyle(color: AppColors.emerald, fontWeight: FontWeight.w900, fontSize: 16)),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  static const _packs = [
    _Pack('mishary', 'Mishary Rashid Alafasy', '1.2 GB'),
    _Pack('sudais', 'Abdul Rahman Al-Sudais', '980 MB'),
    _Pack('husary', 'Mahmoud Khalil Al-Husary', '850 MB'),
    _Pack('minshawi', 'Mohamed Siddiq El-Minshawi', '920 MB'),
    _Pack('shuraim', 'Saud Al-Shuraim', '1.1 GB'),
  ];
}

class _Pack {
  final String id, name, size;
  const _Pack(this.id, this.name, this.size);
}
