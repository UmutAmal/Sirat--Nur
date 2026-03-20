import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/presentation/blocs/library_provider.dart';
import 'package:sirat_i_nur/presentation/widgets/premium_card.dart';
import 'package:sirat_i_nur/core/utils/tr_en.dart';

class LibraryPage extends ConsumerWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collectionsAsync = ref.watch(hadithCollectionsProvider);
    final statusAsync = ref.watch(libraryStatusProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          trEn(context, tr: 'İslami Kütüphane', en: 'Islamic Library'),
          style: const TextStyle(fontWeight: FontWeight.w900, letterSpacing: 0.5),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: trEn(context, tr: 'Kütüphane Durumunu Yenile', en: 'Refresh Library Status'),
            onPressed: () async {
              final messenger = ScaffoldMessenger.of(context);
              messenger.showSnackBar(
                SnackBar(
                  content: Text(
                    trEn(context, tr: 'Kütüphane durumu yenileniyor...', en: 'Refreshing library status...'),
                  ),
                ),
              );
              try {
                final repo = ref.read(libraryRepositoryProvider);
                await repo.getLibraryStatus(forceRefresh: true);
                ref.invalidate(libraryStatusProvider);
                ref.invalidate(hadithCollectionsProvider);
                if (!context.mounted) return;
                messenger.hideCurrentSnackBar();
                messenger.showSnackBar(
                  SnackBar(
                    content: Text(
                      trEn(context, tr: 'Kütüphane durumu güncellendi.', en: 'Library status updated.'),
                    ),
                  ),
                );
              } catch (e) {
                if (!context.mounted) return;
                messenger.hideCurrentSnackBar();
                messenger.showSnackBar(
                  SnackBar(
                    content: Text(
                      trEn(context, tr: 'Kütüphane durumu yenilenemedi: $e', en: 'Could not refresh library status: $e'),
                    ),
                  ),
                );
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: trEn(context, tr: 'Hadis Ara', en: 'Search Hadith'),
            onPressed: () => context.push('/library/search'),
          ),
        ],
      ),
      body: collectionsAsync.when(
        data: (collections) {
          if (collections.isEmpty) {
            return Center(
              child: Text(
                trEn(context, tr: 'Koleksiyon bulunamadı.', en: 'No Collections Found.'),
              ),
            );
          }

          final hasData = collections.any((c) => c.totalHadiths > 0);

          return ListView.separated(
            padding: const EdgeInsets.all(16).copyWith(bottom: 100),
            itemCount: collections.length + 2,
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              if (index == 0) {
                return PremiumCard(
                  child: statusAsync.when(
                    data: (status) {
                      final statusLabel = status.dataPackInstalled
                          ? trEn(context, tr: 'Veri paketi kurulu', en: 'Data pack installed')
                          : trEn(context, tr: 'Veri paketi kurulu değil', en: 'Data pack not installed');
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.storage,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              const SizedBox(width: 12),
                              Text(
                                trEn(context, tr: 'Kütüphane Durumu', en: 'Library Status'),
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Text(
                            trEn(context, tr: 'Koleksiyonlar: ${status.collectionCount}', en: 'Collections: ${status.collectionCount}'),
                          ),
                          Text(
                            trEn(context, tr: 'Hadisler: ${status.hadithCount}', en: 'Hadiths: ${status.hadithCount}'),
                          ),
                          Text(trEn(context, tr: 'Durum: $statusLabel', en: 'Status: $statusLabel')),
                          if (status.sourceName != null)
                            Text(trEn(context, tr: 'Kaynak: ${status.sourceName}', en: 'Source: ${status.sourceName}')),
                          if (status.sourceVersion != null)
                            Text(trEn(context, tr: 'Sürüm: ${status.sourceVersion}', en: 'Version: ${status.sourceVersion}')),
                          if (status.databaseUserVersion != null)
                            Text(
                              trEn(
                                context,
                                tr: 'Veritabanı Sürümü: ${status.databaseUserVersion}',
                                en: 'DB Version: ${status.databaseUserVersion}',
                              ),
                            ),
                          if (status.assetPath != null)
                            Text(trEn(context, tr: 'Varlık: ${status.assetPath}', en: 'Asset: ${status.assetPath}')),
                          if (status.sourceNotes != null)
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                status.sourceNotes!,
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                                ),
                              ),
                            ),
                        ],
                      );
                    },
                    loading: () => Row(
                      children: [
                        const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            trEn(context, tr: 'Kütüphane durumu kontrol ediliyor...', en: 'Checking library status...'),
                          ),
                        ),
                      ],
                    ),
                    error: (err, st) => Text(
                      trEn(context, tr: 'Durum hatası: $err', en: 'Status error: $err'),
                    ),
                  ),
                );
              }

              if (index == 1) {
                return PremiumCard(
                  child: Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          hasData
                              ? trEn(context, tr: 'Resmi hadis verisi yüklü.', en: 'Official hadith data is installed.')
                              : trEn(
                                  context,
                                  tr: 'Resmi hadis verisi henüz yüklü değil. Koleksiyonlar görünür, resmi veri paketi sağlandığında içerik gelir.',
                                  en: 'Official hadith data is not installed yet. Collections are visible, content will appear once an official data pack is provided.',
                                ),
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }

              final col = collections[index - 2];
              return PremiumCard(
                padding: EdgeInsets.zero,
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  leading: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.menu_book_rounded, color: Theme.of(context).colorScheme.primary),
                  ),
                  title: Text(
                    col.name,
                    style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                  ),
                  subtitle: Text(
                    col.totalHadiths > 0
                        ? trEn(context, tr: '${col.totalHadiths} Sahih Hadis', en: '${col.totalHadiths} Authentic Hadiths')
                        : trEn(context, tr: 'Veri paketi gerekli', en: 'Data pack required'),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.8),
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                  trailing: Icon(Icons.chevron_right_rounded, color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3)),
                  onTap: () {
                    context.push('/library/hadith/${col.id}', extra: col.name);
                  },
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, st) => Center(
          child: Text(
            trEn(context, tr: 'Hata: $err', en: 'Error: $err'),
          ),
        ),
      ),
    );
  }
}
