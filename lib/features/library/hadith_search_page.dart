import 'package:flutter/material.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

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
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.searchHadith)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: l10n.searchHint,
                prefixIcon: const Icon(Icons.search_rounded),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide.none),
                filled: true,
                fillColor: isDark ? AppColors.darkSurface : AppColors.emeraldSurface,
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: Center(
                child: Text(l10n.searchHint,
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
