import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

class MainSkeleton extends StatelessWidget {
  final Widget child;
  const MainSkeleton({super.key, required this.child});

  static int _calculateIndex(String location) {
    if (location.startsWith('/home')) return 0;
    if (location.startsWith('/quran')) return 1;
    if (location.startsWith('/qibla')) return 2;
    if (location.startsWith('/zikr')) return 3;
    if (location.startsWith('/calendar')) return 4;
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final location = GoRouterState.of(context).matchedLocation;
    final currentIndex = _calculateIndex(location);

    return Scaffold(
      body: child,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.08),
              blurRadius: 20,
              offset: const Offset(0, -4),
            ),
          ],
        ),
        child: NavigationBar(
          selectedIndex: currentIndex,
          onDestinationSelected: (index) {
            switch (index) {
              case 0: context.go('/home');
              case 1: context.go('/quran');
              case 2: context.go('/qibla');
              case 3: context.go('/zikr');
              case 4: context.go('/calendar');
            }
          },
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home_rounded, color: AppColors.emerald),
              label: l10n.home,
            ),
            NavigationDestination(
              icon: Icon(Icons.menu_book_outlined),
              selectedIcon: Icon(Icons.menu_book_rounded, color: AppColors.emerald),
              label: l10n.quran,
            ),
            NavigationDestination(
              icon: Icon(Icons.explore_outlined),
              selectedIcon: Icon(Icons.explore_rounded, color: AppColors.emerald),
              label: l10n.qibla,
            ),
            NavigationDestination(
              icon: Icon(Icons.touch_app_outlined),
              selectedIcon: Icon(Icons.touch_app_rounded, color: AppColors.emerald),
              label: l10n.zikr,
            ),
            NavigationDestination(
              icon: Icon(Icons.calendar_month_outlined),
              selectedIcon: Icon(Icons.calendar_month_rounded, color: AppColors.emerald),
              label: l10n.calendar,
            ),
          ],
        ),
      ),
    );
  }
}
