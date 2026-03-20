import 'package:flutter/material.dart';
import 'dart:math' as math;

/// Islamic geometric pattern decoration widget
/// Creates beautiful arabesque-inspired patterns
class IslamicPatternDecoration extends StatelessWidget {
  final double size;
  final Color color;
  final double opacity;
  
  const IslamicPatternDecoration({
    super.key,
    this.size = 100,
    this.color = const Color(0xFF00A86B),
    this.opacity = 0.1,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        painter: _IslamicPatternPainter(
          color: color.withValues(alpha: opacity),
        ),
      ),
    );
  }
}

class _IslamicPatternPainter extends CustomPainter {
  final Color color;
  
  _IslamicPatternPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;
    
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 5;
    
    // Draw 8-pointed star pattern (Islamic star)
    for (int i = 0; i < 8; i++) {
      final angle = (i * math.pi / 4);
      final outerPoint = Offset(
        center.dx + radius * math.cos(angle),
        center.dy + radius * math.sin(angle),
      );
      final innerAngle = angle + math.pi / 8;
      final innerRadius = radius * 0.4;
      final innerPoint = Offset(
        center.dx + innerRadius * math.cos(innerAngle),
        center.dy + innerRadius * math.sin(innerAngle),
      );
      canvas.drawLine(outerPoint, innerPoint, paint);
    }
    
    // Draw outer circle
    canvas.drawCircle(center, radius, paint);
    
    // Draw inner circle
    canvas.drawCircle(center, radius * 0.4, paint);
    
    // Draw decorative dots at corners
    final dotPaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    
    for (int i = 0; i < 8; i++) {
      final angle = (i * math.pi / 4);
      final point = Offset(
        center.dx + radius * math.cos(angle),
        center.dy + radius * math.sin(angle),
      );
      canvas.drawCircle(point, 2, dotPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// Decorative Islamic border widget
class IslamicBorderDecoration extends StatelessWidget {
  final Widget child;
  final Color color;
  final double borderWidth;
  
  const IslamicBorderDecoration({
    super.key,
    required this.child,
    this.color = const Color(0xFF00A86B),
    this.borderWidth = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: color.withValues(alpha: 0.3),
          width: borderWidth,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: child,
      ),
    );
  }
}

/// Circular Islamic medallion decoration
class IslamicMedallion extends StatelessWidget {
  final double size;
  final Color primaryColor;
  final Color secondaryColor;
  final Widget? child;
  
  const IslamicMedallion({
    super.key,
    this.size = 80,
    this.primaryColor = const Color(0xFF00A86B),
    this.secondaryColor = const Color(0xFFD4AF37),
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Outer ring
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: primaryColor.withValues(alpha: 0.3),
                width: 2,
              ),
            ),
          ),
          // Middle ring
          Container(
            width: size * 0.75,
            height: size * 0.75,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: secondaryColor.withValues(alpha: 0.5),
                width: 1.5,
              ),
            ),
          ),
          // Inner circle with pattern
          Container(
            width: size * 0.5,
            height: size * 0.5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  primaryColor.withValues(alpha: 0.2),
                  primaryColor.withValues(alpha: 0.05),
                ],
              ),
            ),
          ),
          // Center dot
          Container(
            width: size * 0.1,
            height: size * 0.1,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: secondaryColor,
            ),
          ),
          // Optional child in center
          child ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}

/// Bismillah decoration - "Bismillahirahmanirrahim"
class BismillahDecoration extends StatelessWidget {
  final double fontSize;
  final Color color;
  
  const BismillahDecoration({
    super.key,
    this.fontSize = 24,
    this.color = const Color(0xFFD4AF37),
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ',
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: 'Amiri', // Traditional Islamic calligraphy font
        color: color,
        letterSpacing: 2,
      ),
      textAlign: TextAlign.center,
    );
  }
}

/// Elegant divider with Islamic pattern
class IslamicDivider extends StatelessWidget {
  final Color color;
  final double height;
  
  const IslamicDivider({
    super.key,
    this.color = const Color(0xFF00A86B),
    this.height = 20,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Left decorative line
          Container(
            width: 30,
            height: 1,
            color: color.withValues(alpha: 0.3),
          ),
          // Center diamond
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Transform.rotate(
              angle: math.pi / 4,
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.5),
                  border: Border.all(
                    color: color,
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
          // Right decorative line
          Container(
            width: 30,
            height: 1,
            color: color.withValues(alpha: 0.3),
          ),
        ],
      ),
    );
  }
}

/// Crescent and Star widget
class CrescentAndStar extends StatelessWidget {
  final double size;
  final Color color;
  
  const CrescentAndStar({
    super.key,
    this.size = 40,
    this.color = const Color(0xFFD4AF37),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Crescent (using a positioned Container with border radius)
          Positioned(
            left: 0,
            child: Container(
              width: size * 0.8,
              height: size * 0.8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    color,
                    color.withValues(alpha: 0.7),
                  ],
                ),
              ),
            ),
          ),
          // Star
          Positioned(
            right: size * 0.1,
            top: size * 0.15,
            child: Icon(
              Icons.star,
              size: size * 0.35,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}

/// Background pattern for screens
class IslamicBackgroundPattern extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final Color patternColor;
  
  const IslamicBackgroundPattern({
    super.key,
    required this.child,
    this.backgroundColor = Colors.white,
    this.patternColor = const Color(0xFF00A86B),
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background color
        Container(color: backgroundColor),
        // Pattern overlay
        Positioned.fill(
          child: Opacity(
            opacity: 0.03,
            child: CustomPaint(
              painter: _BackgroundPatternPainter(color: patternColor),
            ),
          ),
        ),
        // Main content
        child,
      ],
    );
  }
}

class _BackgroundPatternPainter extends CustomPainter {
  final Color color;
  
  _BackgroundPatternPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    
    const spacing = 60.0;
    
    // Draw diagonal grid pattern
    for (double i = -size.height; i < size.width + size.height; i += spacing) {
      canvas.drawLine(
        Offset(i, 0),
        Offset(i + size.height, size.height),
        paint,
      );
      canvas.drawLine(
        Offset(i + size.height, 0),
        Offset(i, size.height),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
