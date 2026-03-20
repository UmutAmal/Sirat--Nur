import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/core/utils/tr_en.dart';

class AppErrorPage extends StatelessWidget {
  final Object? error;

  const AppErrorPage({super.key, this.error});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(trEn(context, tr: 'Bir şeyler ters gitti', en: 'Something went wrong'))),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.error_outline, size: 48, color: Colors.red),
            const SizedBox(height: 16),
            Text(
              trEn(context, tr: 'Beklenmeyen bir hata oluştu.', en: 'We hit an unexpected error.'),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              error?.toString() ?? trEn(context, tr: 'Detay yok.', en: 'No details available.'),
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () => context.go('/home'),
                  child: Text(trEn(context, tr: 'Ana Sayfa', en: 'Go Home')),
                ),
                const SizedBox(width: 12),
                OutlinedButton(
                  onPressed: () => context.push('/settings/diagnostics'),
                  child: Text(trEn(context, tr: 'Tanılamayı Aç', en: 'Open Diagnostics')),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
