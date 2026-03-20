import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QuranPage extends ConsumerWidget {
  const QuranPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Quran'),
          bottom: const TabBar(
            tabs: [Tab(text: 'Surahs'), Tab(text: 'Juz')],
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: TextStyle(fontWeight: FontWeight.w900, fontSize: 14),
          ),
        ),
        body: TabBarView(
          children: [
            _buildSurahList(context),
            _buildJuzList(context),
          ],
        ),
      ),
    );
  }

  Widget _buildSurahList(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 114,
      itemBuilder: (context, index) {
        final num = index + 1;
        return ListTile(
          leading: Container(
            width: 40, height: 40,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(child: Text('$num', style: TextStyle(
              fontWeight: FontWeight.w900, color: Theme.of(context).colorScheme.primary))),
          ),
          title: Text('Surah $num', style: const TextStyle(fontWeight: FontWeight.w800)),
          trailing: const Icon(Icons.chevron_right_rounded),
          onTap: () {},
        );
      },
    );
  }

  Widget _buildJuzList(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 30,
      itemBuilder: (context, index) {
        final num = index + 1;
        return ListTile(
          leading: Container(
            width: 40, height: 40,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(child: Text('$num', style: TextStyle(
              fontWeight: FontWeight.w900, color: Theme.of(context).colorScheme.primary))),
          ),
          title: Text('Juz $num', style: const TextStyle(fontWeight: FontWeight.w800)),
          trailing: const Icon(Icons.chevron_right_rounded),
          onTap: () {},
        );
      },
    );
  }
}
