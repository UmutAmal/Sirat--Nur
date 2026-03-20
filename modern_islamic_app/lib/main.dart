import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';
import 'package:sirat_i_nur/core/network/app_router.dart';
import 'package:sirat_i_nur/core/services/notification_service.dart';
import 'package:sirat_i_nur/core/services/widget_service.dart';
import 'package:sirat_i_nur/core/services/ad_service.dart';
import 'package:sirat_i_nur/presentation/blocs/settings_provider.dart';
import 'package:sirat_i_nur/core/services/isar_service.dart';
import 'package:sirat_i_nur/core/services/intelligence_manager.dart';
import 'package:sirat_i_nur/presentation/widgets/sovereign_error_boundary.dart';
import 'package:sirat_i_nur/presentation/blocs/dynamic_theme_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Optimized Splash Screen - Shows immediately while services load
class SplashScreenLoader extends StatelessWidget {
  const SplashScreenLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A2E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App Icon with glow effect
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: const Color(0xFF16213E),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.withValues(alpha: 0.4),
                    blurRadius: 40,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: const Icon(
                Icons.mosque,
                size: 60,
                color: Color(0xFF4CAF50),
              ),
            ),
            const SizedBox(height: 32),
            // App Name
            const Text(
              'Sirat-ı Nur',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Islami Yol',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white54,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(height: 48),
            // Animated loading
            const SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF4CAF50)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    Zone.current.handleUncaughtError(
      details.exception,
      details.stack ?? StackTrace.current,
    );
  };
  ErrorWidget.builder = (details) => SovereignErrorBoundary(details: details);
  
  runZonedGuarded(() async {
    // Get SharedPreferences first
    final prefs = await SharedPreferences.getInstance();
    
    // Start background services
    _initializeServicesBackground();

    runApp(
      ProviderScope(
        overrides: [
          sharedPreferencesProvider.overrideWithValue(prefs),
        ],
        child: OptimizedIslamicApp(prefs: prefs),
      ),
    );
  }, (error, stack) {
    debugPrint('Uncaught error: $error');
    debugPrintStack(stackTrace: stack);
  });
}

// Background service initialization - non-blocking
Future<void> _initializeServicesBackground() async {
  // Initialize services with timeout and error handling
  Future<void> safeInit(Future<void> Function() init, String name) async {
    try {
      await init().timeout(const Duration(seconds: 10));
    } catch (e) {
      debugPrint('$name init failed (non-blocking): $e');
    }
  }

  // Initialize services in parallel (non-blocking)
  safeInit(() async {
    final service = NotificationService();
    await service.init();
  }, 'Notification');

  safeInit(() async {
    final service = WidgetService();
    await service.init();
  }, 'Widget');

  safeInit(() async => AdService.init(), 'Ad');

  safeInit(() async {
    final service = IsarService();
    await service.init();
  }, 'Isar');

  safeInit(() async {
    final service = IntelligenceManager();
    await service.init();
  }, 'Intelligence');
}

class OptimizedIslamicApp extends ConsumerStatefulWidget {
  final SharedPreferences prefs;
  
  const OptimizedIslamicApp({super.key, required this.prefs});

  @override
  ConsumerState<OptimizedIslamicApp> createState() => _OptimizedIslamicAppState();
}

class _OptimizedIslamicAppState extends ConsumerState<OptimizedIslamicApp> {
  bool _showSplash = true;

  @override
  void initState() {
    super.initState();
    // Auto-hide splash after delay to allow UI to render
    Future.delayed(const Duration(milliseconds: 2500), () {
      if (mounted) {
        setState(() => _showSplash = false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(settingsProvider);
    final router = ref.watch(appRouterProvider);
    final dynamicTheme = ref.watch(dynamicThemeServiceProvider.notifier);

    // Show splash while services initialize
    if (_showSplash) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const SplashScreenLoader(),
      );
    }

    return MaterialApp.router(
      onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
      debugShowCheckedModeBanner: false,
      theme: dynamicTheme.currentDynamicTheme,
      darkTheme: dynamicTheme.currentDynamicTheme,
      themeMode: ThemeMode.dark,
      locale: settings.languageCode != null ? Locale(settings.languageCode!) : null,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router,
    );
  }
}
