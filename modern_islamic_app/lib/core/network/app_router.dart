import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/presentation/blocs/settings_provider.dart';
import 'package:sirat_i_nur/presentation/pages/onboarding_page.dart';
import 'package:sirat_i_nur/presentation/pages/offline_downloads_page.dart';
import 'package:sirat_i_nur/presentation/pages/asma_ul_husna_page.dart';
import 'package:sirat_i_nur/presentation/pages/tracker_page.dart';
import 'package:sirat_i_nur/presentation/pages/places_map_page.dart';
import 'package:sirat_i_nur/presentation/pages/live_tv_page.dart';
import 'package:sirat_i_nur/presentation/pages/home_page.dart';
import 'package:sirat_i_nur/presentation/pages/main_skeleton.dart';
import 'package:sirat_i_nur/presentation/pages/paywall_page.dart';
import 'package:sirat_i_nur/presentation/pages/qibla_page.dart';
import 'package:sirat_i_nur/presentation/pages/quran_page.dart';
import 'package:sirat_i_nur/presentation/pages/surah_reading_page.dart';
import 'package:sirat_i_nur/presentation/pages/zikr_page.dart';
import 'package:sirat_i_nur/presentation/pages/calendar_page.dart';
import 'package:sirat_i_nur/presentation/pages/settings_page.dart';
import 'package:sirat_i_nur/presentation/pages/juz_reading_page.dart';
import 'package:sirat_i_nur/presentation/pages/library_page.dart';
import 'package:sirat_i_nur/presentation/pages/hadith_list_page.dart';
import 'package:sirat_i_nur/presentation/pages/location_selection_page.dart';
import 'package:sirat_i_nur/presentation/pages/hadith_search_page.dart';
import 'package:sirat_i_nur/presentation/pages/diagnostics_page.dart';
import 'package:sirat_i_nur/presentation/pages/app_error_page.dart';
import 'package:sirat_i_nur/presentation/pages/tafsir_page.dart';

// Custom page transition - Smooth slide and fade
CustomTransitionPage<T> buildPageWithSlideTransition<T>(
  BuildContext context,
  GoRouterState state,
  Widget child,
) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 350),
    reverseTransitionDuration: const Duration(milliseconds: 300),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // Slide from right with fade
      final slideAnimation = Tween<Offset>(
        begin: const Offset(1.0, 0.0),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.easeOutCubic,
      ));
      
      final fadeAnimation = Tween<double>(
        begin: 0.0,
        end: 1.0,
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.easeOut,
      ));

      return SlideTransition(
        position: slideAnimation,
        child: FadeTransition(
          opacity: fadeAnimation,
          child: child,
        ),
      );
    },
  );
}

// Scale and fade transition for modal-like pages
CustomTransitionPage<T> buildPageWithScaleTransition<T>(
  BuildContext context,
  GoRouterState state,
  Widget child,
) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 400),
    reverseTransitionDuration: const Duration(milliseconds: 350),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final scaleAnimation = Tween<double>(
        begin: 0.85,
        end: 1.0,
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.easeOutBack,
      ));
      
      final fadeAnimation = Tween<double>(
        begin: 0.0,
        end: 1.0,
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.easeOut,
      ));

      return ScaleTransition(
        scale: scaleAnimation,
        child: FadeTransition(
          opacity: fadeAnimation,
          child: child,
        ),
      );
    },
  );
}

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final appRouterProvider = Provider<GoRouter>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  final isFirstLaunch = prefs.getBool('isFirstLaunch') ?? true;

  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: isFirstLaunch ? '/onboarding' : '/home',
    errorBuilder: (context, state) => AppErrorPage(error: state.error),
    redirect: (context, state) {
      if (isFirstLaunch && state.matchedLocation != '/onboarding') {
        return '/onboarding';
      }
      return null;
    },
    routes: [
      GoRoute(
        path: '/onboarding',
        name: 'onboarding',
        pageBuilder: (context, state) => buildPageWithScaleTransition(context, state, const OnboardingPage()),
      ),
      ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return MainSkeleton(child: child);
      },
      routes: [
        GoRoute(
          path: '/home',
          name: 'home',
          pageBuilder: (context, state) => buildPageWithSlideTransition(context, state, const HomePage()),
        ),
        GoRoute(
          path: '/quran',
          name: 'quran',
          pageBuilder: (context, state) => buildPageWithSlideTransition(context, state, const QuranPage()),
          routes: [
            GoRoute(
              path: 'reading/:id',
              name: 'surah_reading',
              parentNavigatorKey: _rootNavigatorKey, // Hide bottom nav bar on reading screen
              pageBuilder: (context, state) {
                final surahNumber = int.parse(state.pathParameters['id']!);
                final surahName = state.extra as String? ?? 'Surah';
                return buildPageWithScaleTransition(
                  context, 
                  state, 
                  SurahReadingPage(
                    surahNumber: surahNumber,
                    surahName: surahName,
                  ),
                );
              },
            ),
            GoRoute(
              path: 'juz/:id',
              name: 'juz_reading',
              parentNavigatorKey: _rootNavigatorKey, // Hide bottom nav bar on reading screen
              pageBuilder: (context, state) {
                final juzNumber = int.parse(state.pathParameters['id']!);
                final juzName = state.extra as String? ?? 'Juz';
                return buildPageWithScaleTransition(
                  context, 
                  state, 
                  JuzReadingPage(
                    juzNumber: juzNumber,
                    title: juzName,
                  ),
                );
              },
            ),
            GoRoute(
              path: 'tafsir/:id',
              name: 'tafsir_reading',
              parentNavigatorKey: _rootNavigatorKey,
              pageBuilder: (context, state) {
                final surahNumber = int.parse(state.pathParameters['id']!);
                final surahName = state.extra as String? ?? 'Surah';
                return buildPageWithSlideTransition(
                  context, 
                  state, 
                  TafsirPage(
                    surahNumber: surahNumber,
                    surahName: surahName,
                  ),
                );
              },
            ),
          ],
        ),
        GoRoute(
          path: '/qibla',
          name: 'qibla',
          pageBuilder: (context, state) => buildPageWithSlideTransition(context, state, const QiblaPage()),
        ),
        GoRoute(
          path: '/zikr',
          name: 'zikr',
          pageBuilder: (context, state) => buildPageWithSlideTransition(context, state, const ZikrPage()),
        ),
        GoRoute(
          path: '/calendar',
          name: 'calendar',
          pageBuilder: (context, state) => buildPageWithSlideTransition(context, state, const CalendarPage()),
        ),
      ],
    ),
    GoRoute(
      path: '/settings',
      name: 'settings',
      pageBuilder: (context, state) => buildPageWithSlideTransition(context, state, const SettingsPage()),
      routes: [
        GoRoute(
          path: 'location',
          name: 'location_selection',
          pageBuilder: (context, state) => buildPageWithSlideTransition(context, state, const LocationSelectionPage()),
        ),
        GoRoute(
          path: 'diagnostics',
          name: 'diagnostics',
          pageBuilder: (context, state) => buildPageWithSlideTransition(context, state, const DiagnosticsPage()),
        ),
      ],
    ),
    GoRoute(
      path: '/paywall',
      name: 'paywall',
      pageBuilder: (context, state) => buildPageWithScaleTransition(context, state, const PaywallPage()),
    ),
    GoRoute(
      path: '/livetv',
      name: 'livetv',
      pageBuilder: (context, state) => buildPageWithSlideTransition(context, state, const LiveTvPage()),
    ),
    GoRoute(
      path: '/places',
      name: 'places',
      pageBuilder: (context, state) => buildPageWithSlideTransition(context, state, const PlacesMapPage()),
    ),
    GoRoute(
      path: '/tracker',
      name: 'tracker',
      pageBuilder: (context, state) => buildPageWithSlideTransition(context, state, const TrackerPage()),
    ),
    GoRoute(
      path: '/asma',
      name: 'asma',
      pageBuilder: (context, state) => buildPageWithSlideTransition(context, state, const AsmaUlHusnaPage()),
    ),
    GoRoute(
      path: '/downloads',
      name: 'downloads',
      pageBuilder: (context, state) => buildPageWithSlideTransition(context, state, const OfflineDownloadsPage()),
    ),
    GoRoute(
      path: '/library',
      name: 'library',
      pageBuilder: (context, state) => buildPageWithSlideTransition(context, state, const LibraryPage()),
      routes: [
        GoRoute(
          path: 'search',
          name: 'hadith_search',
          pageBuilder: (context, state) => buildPageWithSlideTransition(context, state, const HadithSearchPage()),
        ),
        GoRoute(
          path: 'hadith/:id',
          name: 'hadith_list',
          pageBuilder: (context, state) {
            final collectionId = state.pathParameters['id']!;
            final collectionName = state.extra as String? ?? 'Hadith Collection';
            return buildPageWithSlideTransition(
              context, 
              state, 
              HadithListPage(
                collectionId: collectionId,
                collectionName: collectionName,
              ),
            );
          },
        ),
      ],
    ),
  ],
  );
});
