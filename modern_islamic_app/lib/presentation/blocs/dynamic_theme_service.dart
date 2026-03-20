import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DynamicThemeService extends StateNotifier<ThemeMode> {
  DynamicThemeService() : super(ThemeMode.dark);

  /// Dynamic Prayer-Time Palette Shift
  /// Gradually shifts primary colors as the day progresses
  ThemeData get currentDynamicTheme {
    final now = DateTime.now();
    final hour = now.hour;

    Color primary = const Color(0xFFFFD700); // Default Gold

    if (hour >= 4 && hour < 6) {
      primary = const Color(0xFFE1F5FE); // Dawn Blue (Fajr)
    } else if (hour >= 6 && hour < 12) {
      primary = const Color(0xFFFFD700); // Morning Gold (Dhuhr approach)
    } else if (hour >= 12 && hour < 17) {
      primary = const Color(0xFFFFA000); // Midday Amber (Asr)
    } else if (hour >= 17 && hour < 19) {
      primary = const Color(0xFFFF5722); // Twilight Crimson (Maghrib)
    } else {
      primary = const Color(0xFF2196F3); // Night Sapphire (Isha)
    }

    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: primary,
      colorScheme: ColorScheme.dark(
        primary: primary,
        secondary: const Color(0xFFB8860B),
        surface: Colors.black,
      ),
      scaffoldBackgroundColor: Colors.black,
      fontFamily: 'Outfit',
    );
  }
}

final dynamicThemeServiceProvider = StateNotifierProvider<DynamicThemeService, ThemeMode>((ref) => DynamicThemeService());
