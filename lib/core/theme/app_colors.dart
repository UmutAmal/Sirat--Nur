import 'package:flutter/material.dart';

/// App color constants for the RamadanPro design system
class AppColors {
  AppColors._();

  // Primary Emerald
  static const Color emeraldDeep = Color(0xFF1B5E20);
  static const Color emerald = Color(0xFF2E7D32);
  static const Color emeraldLight = Color(0xFF4CAF50);
  static const Color emeraldSurface = Color(0x0D2E7D32); // 5% opacity

  // Light Theme
  static const Color creamBg = Color(0xFFFDFBF7);
  static const Color cardLight = Color(0xFFFFFFFF);
  static const Color textPrimary = Color(0xFF1A1A1A);
  static const Color textSecondary = Color(0xFF6B7280);

  // Dark Theme
  static const Color darkBg = Color(0xFF0F1A0F);
  static const Color darkSurface = Color(0xFF1A2E1A);
  static const Color darkCard = Color(0xFF1E3A1E);
  static const Color textOnDark = Color(0xFFF5F5F5);
  static const Color textSecondaryDark = Color(0xFFB0BEC5);

  // Accent
  static const Color gold = Color(0xFFD4A574);
  static const Color goldLight = Color(0x1AD4A574); // 10% opacity

  // Status
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFFA726);
  static const Color error = Color(0xFFEF5350);
  static const Color info = Color(0xFF42A5F5);

  // Gradients
  static const LinearGradient emeraldGradient = LinearGradient(
    colors: [emeraldDeep, emerald],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient darkGradient = LinearGradient(
    colors: [Color(0xFF0F1A0F), Color(0xFF1A2E1A)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
