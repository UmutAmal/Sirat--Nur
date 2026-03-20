import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/services/tafsir_local_service.dart';
import 'package:sirat_i_nur/core/utils/l10n_utils.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';

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
  List<Map<String, dynamic>> _tafsirs = [];
  bool _isLoading = true;
  String? _error;
  String _selectedTafsir = 'en.sahih';

  final List<Map<String, String>> _availableTafsirs = [
    {'id': 'en.sahih', 'name': 'Saheeh International'},
    {'id': 'en.arabicexpert', 'name': 'Arabic Expert'},
    {'id': 'en.aisah', 'name': 'Aisha Bewley'},
    {'id': 'en.khalifamag', 'name': 'Khalifa Magdy'},
    {'id': 'en.muhammadtaqiusmani', 'name': 'Muhammad Taqi Usmani'},
    {'id': 'tr.yazir', 'name': 'ElmalÃ„Â±lÃ„Â± Hamdi YazÃ„Â±r'},
    {'id': 'tr.suati', 'name': 'Suat YÃ„Â±ldÃ„Â±rÃ„Â±m'},
  ];

  @override
  void initState() {
    super.initState();
    _loadTafsir();
  }

  Future<void> _loadTafsir() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      // Try to load from local cache first
      final loader = TafsirLoader(
        surahNumber: widget.surahNumber,
        tafsirSource: _selectedTafsir,
      );
      
      final tafsirData = await loader.loadTafsir(
        onProgress: (progress, message) {
          if (mounted) {
            setState(() {
              // Show loading progress
            });
          }
        },
      );
      
      if (tafsirData.isNotEmpty) {
        setState(() {
          _tafsirs = tafsirData.map<Map<String, dynamic>>((verse) {
            return {
              'verse_number': verse['verse_number'],
              'text': verse['tafsir_text'] ?? '', // Using cached text as base
              'tafsir': verse['tafsir_text'],
              'is_offline': true,
            };
          }).toList();
          _isLoading = false;
        });
      } else {
        setState(() {
          _error = 'No tafsir available';
          _isLoading = false;
        });
      }
    } catch (e) {
      setState(() {
        _error = trEn(context, 
          tr: 'Ã„Â°nternet baÃ„Å¸lantÃ„Â±nÃ„Â±zÃ„Â± kontrol edin: $e', 
          en: 'Check your internet connection: $e');
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final isTr = Localizations.localeOf(context).languageCode == 'tr';
    
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.surahName} - ${isTr ? "Tefsir" : "Tafsir"}'),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.book),
            tooltip: isTr ? 'Tefsir KaynaÃ„Å¸Ã„Â±' : 'Tafsir Source',
            onSelected: (value) {
              setState(() {
                _selectedTafsir = value;
              });
              _loadTafsir();
            },
            itemBuilder: (context) => _availableTafsirs.map((tafsir) {
              return PopupMenuItem<String>(
                value: tafsir['id'],
                child: Row(
                  children: [
                    if (_selectedTafsir == tafsir['id'])
                      Icon(Icons.check, size: 18, color: Theme.of(context).colorScheme.primary),
                    if (_selectedTafsir == tafsir['id']) const SizedBox(width: 8),
                    Text(tafsir['name']!),
                  ],
                ),
              );
            }).toList(),
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _loadTafsir,
            tooltip: isTr ? 'Yenile' : 'Refresh',
          ),
        ],
      ),
      body: _buildBody(isTr),
    );
  }

  Widget _buildBody(bool isTr) {
    if (_isLoading) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text('Loading tafsir...'),
          ],
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
                Icons.error_outline,
                size: 64,
                color: Theme.of(context).colorScheme.error,
              ),
              const SizedBox(height: 16),
              Text(
                isTr ? 'Hata oluÃ…Å¸tu' : 'Error occurred',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              Text(
                _error!,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: _loadTafsir,
                icon: const Icon(Icons.refresh),
                label: Text(trEn(context, tr: 'Tefsiri GÃ¶rÃ¼ntÃ¼le', en: 'View Tafsir')),
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
        final verse = _tafsirs[index];
        final verseNum = verse['verse_number'];
        final text = verse['text'] ?? '';
        final tafsir = verse['tafsir'] ?? '';

        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: PremiumCard(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Verse number badge
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        '$verseNum',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 12,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      isTr ? 'TEFSÃ„Â°R' : 'TAFSIR',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1,
                        color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.6),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                
                // Arabic text
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.05),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1)),
                  ),
                  child: Text(
                    text,
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 26,
                      height: 1.8,
                      fontFamily: 'Amiri',
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                
                // Tafsir text
                Text(
                  tafsir,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    height: 1.7,
                    fontSize: 15,
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.85),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}


