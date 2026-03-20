import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/features/common/main_skeleton.dart';
import 'package:sirat_i_nur/features/home/home_page.dart';
import 'package:sirat_i_nur/features/quran/quran_page.dart';
import 'package:sirat_i_nur/features/quran/surah_reading_page.dart';
import 'package:sirat_i_nur/features/quran/juz_reading_page.dart';
import 'package:sirat_i_nur/features/quran/tafsir_page.dart';
import 'package:sirat_i_nur/features/qibla/qibla_page.dart';
import 'package:sirat_i_nur/features/zikr/zikr_page.dart';
import 'package:sirat_i_nur/features/calendar/calendar_page.dart';
import 'package:sirat_i_nur/features/settings/settings_page.dart';
import 'package:sirat_i_nur/features/settings/location_selection_page.dart';
import 'package:sirat_i_nur/features/settings/diagnostics_page.dart';
import 'package:sirat_i_nur/features/premium/paywall_page.dart';
import 'package:sirat_i_nur/features/tv/live_tv_page.dart';
import 'package:sirat_i_nur/features/places/places_map_page.dart';
import 'package:sirat_i_nur/features/tracker/tracker_page.dart';
import 'package:sirat_i_nur/features/library/library_page.dart';
import 'package:sirat_i_nur/features/library/hadith_list_page.dart';
import 'package:sirat_i_nur/features/library/hadith_search_page.dart';
import 'package:sirat_i_nur/features/chatbot/chatbot_page.dart';
import 'package:sirat_i_nur/features/downloads/offline_downloads_page.dart';
import 'package:sirat_i_nur/features/onboarding/onboarding_page.dart';
import 'package:sirat_i_nur/features/analytics/analytics_page.dart';
import 'package:sirat_i_nur/features/common/app_error_page.dart';

// Smooth slide + fade transition
CustomTransitionPage<T> _slideTransition<T>(
  BuildContext context, GoRouterState state, Widget child,
) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 350),
    reverseTransitionDuration: const Duration(milliseconds: 300),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
            .animate(CurvedAnimation(parent: animation, curve: Curves.easeOutCubic)),
        child: FadeTransition(
          opacity: CurvedAnimation(parent: animation, curve: Curves.easeOut),
          child: child,
        ),
      );
    },
  );
}

// Scale + fade for modals
CustomTransitionPage<T> _scaleTransition<T>(
  BuildContext context, GoRouterState state, Widget child,
) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionDuration: const Duration(milliseconds: 400),
    reverseTransitionDuration: const Duration(milliseconds: 350),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return ScaleTransition(
        scale: Tween<double>(begin: 0.85, end: 1.0)
            .animate(CurvedAnimation(parent: animation, curve: Curves.easeOutBack)),
        child: FadeTransition(
          opacity: CurvedAnimation(parent: animation, curve: Curves.easeOut),
          child: child,
        ),
      );
    },
  );
}

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

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
        pageBuilder: (ctx, state) => _scaleTransition(ctx, state, const OnboardingPage()),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => MainSkeleton(child: child),
        routes: [
          GoRoute(
            path: '/home',
            name: 'home',
            pageBuilder: (ctx, state) => _slideTransition(ctx, state, const HomePage()),
          ),
          GoRoute(
            path: '/quran',
            name: 'quran',
            pageBuilder: (ctx, state) => _slideTransition(ctx, state, const QuranPage()),
            routes: [
              GoRoute(
                path: 'reading/:id',
                name: 'surah_reading',
                parentNavigatorKey: _rootNavigatorKey,
                pageBuilder: (ctx, state) {
                  final surahNumber = int.parse(state.pathParameters['id']!);
                  return _scaleTransition(ctx, state, SurahReadingPage(
                    surahNumber: surahNumber,
                  ));
                },
              ),
              GoRoute(
                path: 'juz/:id',
                name: 'juz_reading',
                parentNavigatorKey: _rootNavigatorKey,
                pageBuilder: (ctx, state) {
                  final juzNumber = int.parse(state.pathParameters['id']!);
                  return _scaleTransition(ctx, state, JuzReadingPage(
                    juzNumber: juzNumber,
                  ));
                },
              ),
              GoRoute(
                path: 'tafsir/:id',
                name: 'tafsir_reading',
                parentNavigatorKey: _rootNavigatorKey,
                pageBuilder: (ctx, state) {
                  final surahNumber = int.parse(state.pathParameters['id']!);
                  return _slideTransition(ctx, state, TafsirPage(
                    surahNumber: surahNumber,
                  ));
                },
              ),
            ],
          ),
          GoRoute(
            path: '/qibla',
            name: 'qibla',
            pageBuilder: (ctx, state) => _slideTransition(ctx, state, const QiblaPage()),
          ),
          GoRoute(
            path: '/zikr',
            name: 'zikr',
            pageBuilder: (ctx, state) => _slideTransition(ctx, state, const ZikrPage()),
          ),
          GoRoute(
            path: '/calendar',
            name: 'calendar',
            pageBuilder: (ctx, state) => _slideTransition(ctx, state, const CalendarPage()),
          ),
        ],
      ),
      // Standalone routes (no bottom nav)
      GoRoute(
        path: '/settings',
        name: 'settings',
        pageBuilder: (ctx, state) => _slideTransition(ctx, state, const SettingsPage()),
        routes: [
          GoRoute(
            path: 'location',
            name: 'location_selection',
            pageBuilder: (ctx, state) => _slideTransition(ctx, state, const LocationSelectionPage()),
          ),
          GoRoute(
            path: 'diagnostics',
            name: 'diagnostics',
            pageBuilder: (ctx, state) => _slideTransition(ctx, state, const DiagnosticsPage()),
          ),
        ],
      ),
      GoRoute(
        path: '/paywall',
        name: 'paywall',
        pageBuilder: (ctx, state) => _scaleTransition(ctx, state, const PaywallPage()),
      ),
      GoRoute(
        path: '/livetv',
        name: 'livetv',
        pageBuilder: (ctx, state) => _slideTransition(ctx, state, const LiveTvPage()),
      ),
      GoRoute(
        path: '/places',
        name: 'places',
        pageBuilder: (ctx, state) => _slideTransition(ctx, state, const PlacesMapPage()),
      ),
      GoRoute(
        path: '/tracker',
        name: 'tracker',
        pageBuilder: (ctx, state) => _slideTransition(ctx, state, const TrackerPage()),
      ),
      GoRoute(
        path: '/library',
        name: 'library',
        pageBuilder: (ctx, state) => _slideTransition(ctx, state, const LibraryPage()),
        routes: [
          GoRoute(
            path: 'search',
            name: 'hadith_search',
            pageBuilder: (ctx, state) => _slideTransition(ctx, state, const HadithSearchPage()),
          ),
          GoRoute(
            path: 'hadith/:id',
            name: 'hadith_list',
            pageBuilder: (ctx, state) {
              final collectionId = state.pathParameters['id']!;
              return _slideTransition(ctx, state, HadithListPage(
                collectionId: collectionId,
              ));
            },
          ),
        ],
      ),
      GoRoute(
        path: '/chatbot',
        name: 'chatbot',
        pageBuilder: (ctx, state) => _slideTransition(ctx, state, const ChatbotPage()),
      ),
      GoRoute(
        path: '/downloads',
        name: 'downloads',
        pageBuilder: (ctx, state) => _slideTransition(ctx, state, const OfflineDownloadsPage()),
      ),
      GoRoute(
        path: '/analytics',
        name: 'analytics',
        pageBuilder: (ctx, state) => _slideTransition(ctx, state, const AnalyticsPage()),
      ),
    ],
  );
});
