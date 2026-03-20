import 'package:flutter/material.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';

class HadithSearchPage extends StatefulWidget {
  const HadithSearchPage({super.key});
  @override
  State<HadithSearchPage> createState() => _HadithSearchPageState();
}

class _HadithSearchPageState extends State<HadithSearchPage> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(title: const Text('Search Hadith')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Search by keyword...',
                prefixIcon: const Icon(Icons.search_rounded),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide.none),
                filled: true,
                fillColor: isDark ? AppColors.darkSurface : AppColors.emeraldSurface,
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: Center(
                child: Text('Enter a keyword to search across all hadith collections.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14,
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.4))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
