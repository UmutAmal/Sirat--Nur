import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';
import 'package:sirat_i_nur/presentation/widgets/interactive_tasbih_widget.dart';

class ZikrPage extends ConsumerWidget {
  const ZikrPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          AppLocalizations.of(context)!.zikr.toUpperCase(),
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            letterSpacing: 6,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: InteractiveTasbihWidget(),
      ),
    );
  }
}
