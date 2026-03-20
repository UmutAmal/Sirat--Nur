import 'package:flutter/material.dart';

class CelestialVisualizer extends StatelessWidget {
  final double sunElevation;
  final double sunAzimuth;
  final double moonPhase; // 0.0 to 1.0
  final bool isNight;

  const CelestialVisualizer({
    super.key,
    required this.sunElevation,
    required this.sunAzimuth,
    required this.moonPhase,
    required this.isNight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
      ),
      child: Stack(
        children: [
          // 1. Solar Arc Background
          CustomPaint(
            size: const Size(double.infinity, 200),
            painter: _SolarArcPainter(context: context, sunElevation: sunElevation),
          ),
          
          // 2. Data Indicators
          Positioned(
            top: 16,
            left: 16,
            child: _InfoChip(
              icon: isNight ? Icons.nightlight_round : Icons.wb_sunny_rounded,
              label: "${sunElevation.toStringAsFixed(1)}° Elevation",
            ),
          ),
          
          Positioned(
            top: 16,
            right: 16,
            child: _InfoChip(
              icon: Icons.explore_rounded,
              label: "Sun Azimuth: ${sunAzimuth.toStringAsFixed(1)}°",
            ),
          ),
          
          // 3. 3D Shadow Line (Industrial Detail)
          Center(
            child: Text(
              isNight ? "Celestial Monitoring: Lunar Cycle Active" : "Celestial Monitoring: Solar Flux Tracked",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w200,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _InfoChip({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.8),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Theme.of(context).colorScheme.outlineVariant.withValues(alpha: 0.5)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: Theme.of(context).colorScheme.primary),
          const SizedBox(width: 6),
          Text(label, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class _SolarArcPainter extends CustomPainter {
  final BuildContext context;
  final double sunElevation;

  _SolarArcPainter({required this.context, required this.sunElevation});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Theme.of(context).colorScheme.primary.withValues(alpha: 0.1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    final path = Path();
    final centerY = size.height * 0.8;
    
    // Draw the horizon line
    canvas.drawLine(Offset(0, centerY), Offset(size.width, centerY), paint);

    // Draw the solar arc
    path.moveTo(size.width * 0.1, centerY);
    path.quadraticBezierTo(
      size.width * 0.5, 
      0, 
      size.width * 0.9, 
      centerY
    );
    canvas.drawPath(path, paint);

    // Draw current sun position
    final normalizedElevation = (sunElevation + 20) / 110; // Simple mapping
    final sunPos = Offset(
      size.width * (0.1 + 0.8 * normalizedElevation), 
      centerY - (normalizedElevation * centerY * 0.8)
    );

    final sunPaint = Paint()
      ..color = Theme.of(context).colorScheme.primary
      ..shader = RadialGradient(
        colors: [
          Theme.of(context).colorScheme.primary,
          Theme.of(context).colorScheme.primary.withValues(alpha: 0),
        ],
      ).createShader(Rect.fromCircle(center: sunPos, radius: 15));
    
    canvas.drawCircle(sunPos, 12, sunPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
