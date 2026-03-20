import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/presentation/blocs/library_provider.dart';
import 'package:sirat_i_nur/core/utils/tr_en.dart';
import 'package:sirat_i_nur/presentation/widgets/premium_card.dart';

class HadithSearchPage extends ConsumerStatefulWidget {
  const HadithSearchPage({super.key});

  @override
  ConsumerState<HadithSearchPage> createState() => _HadithSearchPageState();
}

class _HadithSearchPageState extends ConsumerState<HadithSearchPage> {
  final TextEditingController _controller = TextEditingController();
  Timer? _debounce;
  String _query = '';
  String? _collectionId;

  void _onQueryChanged(String value) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      if (mounted) {
        setState(() => _query = value.trim());
      }
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final collectionsAsync = ref.watch(hadithCollectionsProvider);
    final resultsAsync = ref.watch(hadithSearchProvider({
      'query': _query,
      'collectionId': _collectionId,
      'limit': 50,
      'offset': 0,
    }));

    return Scaffold(
      appBar: AppBar(
        title: Text(trEn(context, tr: 'Hadis Arama', en: 'Hadith Search'), style: const TextStyle(fontWeight: FontWeight.w900)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              onChanged: _onQueryChanged,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search_rounded, color: Theme.of(context).colorScheme.primary),
                hintText: trEn(
                  context,
                  tr: 'Hadis metni, çeviri veya bölüm ara',
                  en: 'Search hadith text, translation, or chapter',
                ),
                filled: true,
                fillColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.05),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1.5),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: collectionsAsync.when(
              data: (collections) {
                final items = <DropdownMenuItem<String?>>[
                  DropdownMenuItem<String?>(
                    value: null,
                    child: Text(trEn(context, tr: 'Tüm koleksiyonlar', en: 'All collections')),
                  ),
                  ...collections.map(
                    (c) => DropdownMenuItem<String?>(
                      value: c.id,
                      child: Text(c.name),
                    ),
                  )
                ];

                return DropdownButtonFormField<String?>(
                  value: _collectionId,
                  items: items,
                  onChanged: (value) => setState(() => _collectionId = value),
                  style: TextStyle(color: Theme.of(context).colorScheme.onSurface, fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                    labelText: trEn(context, tr: 'Koleksiyon Filtresi', en: 'Collection Filter'),
                    filled: true,
                    fillColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.05),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                  ),
                );
              },
              loading: () => const LinearProgressIndicator(),
              error: (err, st) => Text(
                trEn(context, tr: 'Koleksiyonlar yüklenemedi: $err', en: 'Error loading collections: $err'),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: _query.length < 2
                ? Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Text(
                        trEn(
                          context,
                          tr: 'Hadis kütüphanesinde aramak için en az 2 karakter girin.',
                          en: 'Type at least 2 characters to search the hadith library.',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                : resultsAsync.when(
                    data: (hadiths) {
                      if (hadiths.isEmpty) {
                        return Center(
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Text(
                              trEn(
                                context,
                                tr: 'Sonuç bulunamadı. Resmi veri paketi henüz yüklü olmayabilir.',
                                en: 'No results found. Official data pack may not be installed yet.',
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      }

                      return ListView.builder(
                        padding: const EdgeInsets.all(16).copyWith(bottom: 100),
                        itemCount: hadiths.length,
                        itemBuilder: (context, index) {
                          final h = hadiths[index];
                          final isSahih = h.grade.toLowerCase() == 'sahih';
                          
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: PremiumCard(
                              padding: const EdgeInsets.all(24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Text(
                                          '${trEn(context, tr: 'HADİS', en: 'HADITH')} ${h.hadithNumber}',
                                          style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w900,
                                            color: Theme.of(context).colorScheme.primary,
                                            letterSpacing: 0.5,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                        decoration: BoxDecoration(
                                          color: isSahih 
                                              ? Colors.green.withValues(alpha: 0.1) 
                                              : Colors.orange.withValues(alpha: 0.1),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Text(
                                          h.grade.toUpperCase(),
                                          style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w900,
                                            color: isSahih ? Colors.green[800] : Colors.orange[800],
                                            letterSpacing: 0.5,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  Text(
                                    h.arabicText,
                                    textAlign: TextAlign.right,
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontFamily: 'Amiri',
                                      fontSize: 26,
                                      height: 1.6,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Divider(color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.05)),
                                  const SizedBox(height: 16),
                                  Text(
                                    h.translation,
                                    style: TextStyle(
                                      fontSize: 15,
                                      height: 1.5,
                                      color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.8),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
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
          ),
        ],
      ),
    );
  }
}
