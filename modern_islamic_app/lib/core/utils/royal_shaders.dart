import 'package:flutter/material.dart';
import 'dart:ui' as ui;

/// Divine Artistry Shader Utility
/// Provides "Liquid Gold" and "Silk" effects for the Royal UX.
class RoyalShaders {
  static Future<ui.FragmentProgram> loadGoldShader() async {
    // In a real project, we would load from assets/shaders/gold.frag
    // For now, we utilize custom painters to mimic shader-like gradients
    // in Phase 4 4x expansion.
    return ui.FragmentProgram.fromAsset('assets/shaders/silk.frag');
  }

  static Decoration royalGoldDecoration(BuildContext context) {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [
          const Color(0xFFFFD700).withValues(alpha: 0.9), // Sovereign Gold
          const Color(0xFFB8860B).withValues(alpha: 1.0), // Royal Bronze
          const Color(0xFFDAA520).withValues(alpha: 0.8), // Pure Silk
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.circular(24),
      border: Border.all(color: const Color(0xFFFFD700).withValues(alpha: 0.3), width: 1.5),
      boxShadow: [
        BoxShadow(
          color: const Color(0xFFFFD700).withValues(alpha: 0.2),
          blurRadius: 30,
          spreadRadius: 2,
        ),
      ],
    );
  }
}

class SilkPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = ui.Gradient.linear(
        Offset.zero,
        Offset(size.width, size.height),
        [
          Colors.white.withValues(alpha: 0.1),
          Colors.white.withValues(alpha: 0.0),
          Colors.white.withValues(alpha: 0.05),
        ],
        [0.0, 0.5, 1.0],
      );

    final path = Path()
      ..moveTo(0, size.height * 0.2)
      ..quadraticBezierTo(size.width * 0.5, size.height * 0.5, size.width, size.height * 0.3)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
