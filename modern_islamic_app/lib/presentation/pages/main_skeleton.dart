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
        destinations: _getNavDestinations(l10n).cast<Widget>(),
      ),
    );
  }

  List<dynamic> _getNavDestinations(AppLocalizations l10n) {
    return [
      NavigationDestination(
        icon: const Icon(Icons.home_outlined),
        selectedIcon: const Icon(Icons.home),
        label: l10n.home,
      ),
      NavigationDestination(
        icon: const Icon(Icons.menu_book_outlined),
        selectedIcon: const Icon(Icons.menu_book),
        label: l10n.quran,
      ),
      NavigationDestination(
        icon: const Icon(Icons.explore_outlined),
        selectedIcon: const Icon(Icons.explore),
        label: l10n.qibla,
      ),
      NavigationDestination(
        icon: const Icon(Icons.touch_app_outlined),
        selectedIcon: const Icon(Icons.touch_app),
        label: l10n.zikr,
      ),
      NavigationDestination(
        icon: const Icon(Icons.calendar_month_outlined),
        selectedIcon: const Icon(Icons.calendar_month),
        label: l10n.calendar,
      ),
    ];
  }
}
