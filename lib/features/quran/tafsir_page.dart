import 'package:flutter/material.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';

class TafsirPage extends StatelessWidget {
  final int surahNumber;
  const TafsirPage({super.key, required this.surahNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tafsir - Surah $surahNumber')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: AppColors.emeraldGradient,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Icon(Icons.menu_book_rounded, color: Colors.white, size: 40),
                  const SizedBox(height: 12),
                  Text('Tafsir Ibn Kathir',
                    style: TextStyle(color: Colors.white.withValues(alpha: 0.9), fontSize: 18, fontWeight: FontWeight.w900)),
                  const SizedBox(height: 4),
                  Text('Surah $surahNumber',
                    style: TextStyle(color: Colors.white.withValues(alpha: 0.6), fontSize: 14)),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkCard : AppColors.cardLight,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Text('Tafsir content will be loaded from Supabase database.',
                    style: TextStyle(fontSize: 14, height: 1.7,
                      color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
