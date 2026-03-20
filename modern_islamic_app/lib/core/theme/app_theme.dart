import 'package:flutter/material.dart';

class AppTheme {
  // --- Light Theme Colors (RamadanPro Inspired) ---
  static const Color lightPrimary = Color(0xFF1B5E20); // Deep Emerald Green
  static const Color lightSecondary = Color(0xFFF1E6D2); // Soft Beige / Cream
  static const Color lightAccent = Color(0xFFD4AF37); // Subtle Gold
  static const Color lightBackground = Color(0xFFFDFBF7); // Warmer, premium cream
  static const Color lightSurface = Color(0xFFFFFFFF); 
  
  // --- Dark Theme Colors ---
  static const Color darkPrimary = Color(0xFF2E7D32); // Softer Green for dark
  static const Color darkSecondary = Color(0xFF1A1C1E); // Deep Navy Black
  static const Color darkBackground = Color(0xFF0B0D0F); 
  static const Color darkSurface = Color(0xFF121417); 

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: lightPrimary,
        primary: lightPrimary,
        secondary: lightSecondary,
        tertiary: lightAccent,
        surface: lightSurface,
        onSurface: const Color(0xFF1A1C1E),
        brightness: Brightness.light,
      ).copyWith(
        surfaceContainerHighest: const Color(0xFFF5F7F6), 
      ),
      scaffoldBackgroundColor: lightBackground,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black87),
        titleTextStyle: TextStyle(
          color: Colors.black87,
          fontSize: 22,
          fontWeight: FontWeight.w700,
          fontFamily: 'Roboto', // Will be upgraded to a premium font later
        ),
      ),
      cardTheme: CardThemeData(
        color: lightSurface,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: SilkPageTransitionsBuilder(),
          TargetPlatform.iOS: SilkPageTransitionsBuilder(),
        },
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: darkPrimary,
        primary: darkPrimary,
        secondary: darkSecondary,
        surface: darkSurface,
        brightness: Brightness.dark,
      ).copyWith(
        surfaceContainerHighest: const Color(0xFF21262D), // Deep card background
      ),
      scaffoldBackgroundColor: darkBackground,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w700,
          fontFamily: 'Roboto',
        ),
      ),
      cardTheme: CardThemeData(
        color: darkSurface,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: SilkPageTransitionsBuilder(),
          TargetPlatform.iOS: SilkPageTransitionsBuilder(),
        },
      ),
    );
  }
}

class SilkPageTransitionsBuilder extends PageTransitionsBuilder {
  const SilkPageTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    // A premium, slow-in-fast-out curve mimicking silk sliding
    final curve = CurvedAnimation(
      parent: animation,
      curve: Curves.easeInOutQuart,
    );
    
    return FadeTransition(
      opacity: curve,
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0.05, 0), // Subtle slide from right
          end: Offset.zero,
        ).animate(curve),
        child: child,
      ),
    );
  }
}
