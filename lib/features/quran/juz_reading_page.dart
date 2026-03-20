import 'package:flutter/material.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';

class JuzReadingPage extends StatelessWidget {
  final int juzNumber;
  const JuzReadingPage({super.key, required this.juzNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Juz $juzNumber')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Juz header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: AppColors.emeraldGradient,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text('الجزء $juzNumber',
                    style: const TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.w900)),
                  const SizedBox(height: 8),
                  Text('Juz $juzNumber',
                    style: TextStyle(color: Colors.white.withValues(alpha: 0.8), fontSize: 16, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 4),
                  Text('20 pages • ~20 hizb',
                    style: TextStyle(color: Colors.white.withValues(alpha: 0.6), fontSize: 13)),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Content placeholder
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkCard : AppColors.cardLight,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  const Icon(Icons.menu_book_rounded, color: AppColors.emerald, size: 48),
                  const SizedBox(height: 16),
                  Text('Juz $juzNumber Content',
                    style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 18)),
                  const SizedBox(height: 8),
                  Text('Full Quran text will be loaded from local database or Supabase API.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, height: 1.6,
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
