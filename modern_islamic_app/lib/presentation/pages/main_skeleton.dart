import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

class MainSkeleton extends StatefulWidget {
  final Widget child;
  const MainSkeleton({super.key, required this.child});

  @override
  State<MainSkeleton> createState() => _MainSkeletonState();
}

class _MainSkeletonState extends State<MainSkeleton> {
  int _currentIndex = 0;

  void _onItemTapped(int index, BuildContext context) {
    if (index == _currentIndex) return;
    
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 0: context.go('/home'); break;
      case 1: context.go('/quran'); break;
      case 2: context.go('/qibla'); break;
      case 3: context.go('/zikr'); break;
      case 4: context.go('/calendar'); break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: widget.child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) => _onItemTapped(index, context),
        indicatorColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        destinations: _getNavDestinations(l10n).cast<Widget>(),
      ),
    );
  }

  List<dynamic> _getNavDestinations(AppLocalizations l10n) {
    return [
      NavigationDestination(
        icon: Icon(Icons.home_rounded, color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5)),
        selectedIcon: Icon(Icons.home_rounded, color: Theme.of(context).colorScheme.primary),
        label: l10n.home,
      ),
      NavigationDestination(
        icon: Icon(Icons.menu_book_rounded, color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5)),
        selectedIcon: Icon(Icons.menu_book_rounded, color: Theme.of(context).colorScheme.primary),
        label: l10n.quran,
      ),
      NavigationDestination(
        icon: Icon(Icons.explore_rounded, color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5)),
        selectedIcon: Icon(Icons.explore_rounded, color: Theme.of(context).colorScheme.primary),
        label: l10n.qibla,
      ),
      NavigationDestination(
        icon: Icon(Icons.touch_app_rounded, color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5)),
        selectedIcon: Icon(Icons.touch_app_rounded, color: Theme.of(context).colorScheme.primary),
        label: l10n.zikr,
      ),
      NavigationDestination(
        icon: Icon(Icons.event_note_rounded, color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5)),
        selectedIcon: Icon(Icons.event_note_rounded, color: Theme.of(context).colorScheme.primary),
        label: l10n.calendar,
      ),
    ];
  }
}
