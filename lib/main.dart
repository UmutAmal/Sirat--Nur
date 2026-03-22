import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/core/network/app_router.dart';
import 'package:sirat_i_nur/core/network/supabase_config.dart';
import 'package:sirat_i_nur/core/theme/app_theme.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/core/constants/app_constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: AppColors.darkSurface,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.emeraldLight.withValues(alpha: 0.4),
                    blurRadius: 40,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: const Icon(Icons.mosque, size: 60, color: AppColors.emeraldLight),
            ),
            const SizedBox(height: 32),
            const Text(
              'Sirat-i Nur',
              style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.w900,
                color: Colors.white, letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Islamic Way of Light',
              style: TextStyle(fontSize: 14, color: Colors.white54, letterSpacing: 1),
            ),
            const SizedBox(height: 48),
            const SizedBox(
              width: 50, height: 50,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation<Color>(AppColors.emeraldLight),
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
    Zone.current.handleUncaughtError(details.exception, details.stack ?? StackTrace.current);
  };

  runZonedGuarded(() async {
    // Initialize Supabase
    try {
      await SupabaseConfig.initialize();
    } catch (e) {
      debugPrint('Supabase init failed (non-blocking): $e');
    }

    final prefs = await SharedPreferences.getInstance();

    runApp(
      ProviderScope(
        overrides: [
          sharedPreferencesProvider.overrideWithValue(prefs),
        ],
        child: SiratINurApp(prefs: prefs),
      ),
    );
  }, (error, stack) {
    debugPrint('Uncaught error: $error');
    debugPrintStack(stackTrace: stack);
  });
}

class SiratINurApp extends ConsumerStatefulWidget {
  final SharedPreferences prefs;
  const SiratINurApp({super.key, required this.prefs});

  @override
  ConsumerState<SiratINurApp> createState() => _SiratINurAppState();
}

class _SiratINurAppState extends ConsumerState<SiratINurApp> {
  bool _showSplash = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 2500), () {
      if (mounted) setState(() => _showSplash = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(settingsProvider);
    final router = ref.watch(appRouterProvider);

    if (_showSplash) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.dark,
        home: const SplashScreen(),
      );
    }

    return MaterialApp.router(
      onGenerateTitle: (context) => AppLocalizations.of(context)?.appTitle ?? 'Sirat-i Nur',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: settings.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      locale: settings.languageCode != null ? Locale(settings.languageCode!) : null,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: [
        ...AppLocalizations.supportedLocales,
        ...supportedLanguages.map((e) => Locale(e.code)).where((l) => !AppLocalizations.supportedLocales.contains(l)),
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        if (locale == null) return supportedLocales.first; // English fallback
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      routerConfig: router,
    );
  }
}
