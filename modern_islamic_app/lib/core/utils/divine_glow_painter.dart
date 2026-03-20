import 'package:flutter/material.dart';
import 'dart:math' as math;

class DivineGlowPainter extends CustomPainter {
  final List<Particle> particles;
  final double animationValue;

  DivineGlowPainter(this.particles, this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.fill;
    
    for (var particle in particles) {
      final opacity = (math.sin(animationValue * 2 * math.pi + particle.phase) + 1) / 2;
      paint.color = const Color(0xFFFFD700).withValues(alpha: opacity * 0.3);
      
      canvas.drawCircle(
        Offset(particle.x * size.width, particle.y * size.height),
        particle.size,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant DivineGlowPainter oldDelegate) => true;
}

class Particle {
  final double x;
  final double y;
  final double size;
  final double phase;

  Particle({required this.x, required this.y, required this.size, required this.phase});

  static List<Particle> generate(int count) {
    final random = math.Random();
    return List.generate(count, (_) => Particle(
      x: random.nextDouble(),
      y: random.nextDouble(),
      size: random.nextDouble() * 4 + 1,
      phase: random.nextDouble() * 2 * math.pi,
    ));
  }
}
