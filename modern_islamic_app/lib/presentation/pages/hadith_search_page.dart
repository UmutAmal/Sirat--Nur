import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/presentation/blocs/library_provider.dart';
import 'package:sirat_i_nur/core/utils/tr_en.dart';

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
        title: Text(trEn(context, tr: 'Hadis Arama', en: 'Hadith Search')),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              onChanged: _onQueryChanged,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: trEn(
                  context,
                  tr: 'Hadis metni, çeviri veya bölüm ara',
                  en: 'Search hadith text, translation, or chapter',
                ),
                border: const OutlineInputBorder(),
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

                // ignore: deprecated_member_use
                return DropdownButtonFormField<String?>(
                  initialValue: _collectionId,
                  items: items,
                  onChanged: (value) => setState(() => _collectionId = value),
                  decoration: InputDecoration(
                    labelText: trEn(context, tr: 'Koleksiyon Filtresi', en: 'Collection Filter'),
                    border: const OutlineInputBorder(),
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

                      return ListView.separated(
                        padding: const EdgeInsets.all(16).copyWith(bottom: 100),
                        itemCount: hadiths.length,
                        separatorBuilder: (context, index) => const Divider(height: 32),
                        itemBuilder: (context, index) {
                          final h = hadiths[index];
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${trEn(context, tr: 'Hadis', en: 'Hadith')} ${h.hadithNumber}',
                                    style: const TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    h.grade,
                                    style: const TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                h.arabicText,
                                textAlign: TextAlign.right,
                                textDirection: TextDirection.rtl,
                                style: const TextStyle(
                                  fontFamily: 'Amiri',
                                  fontSize: 22,
                                  height: 1.6,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                h.translation,
                                style: const TextStyle(fontSize: 15, height: 1.5),
                              ),
                            ],
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
