import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';

class QiblaPage extends ConsumerStatefulWidget {
  const QiblaPage({super.key});
  @override
  ConsumerState<QiblaPage> createState() => _QiblaPageState();
}

class _QiblaPageState extends ConsumerState<QiblaPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  double _direction = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
    // Simulate compass animation
    _controller.addListener(() {
      setState(() {
        _direction = math.sin(_controller.value * 2 * math.pi) * 5 + 135; // Simulated heading to Mecca
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Qibla Compass'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline_rounded),
            onPressed: () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text('Calibration', style: TextStyle(fontWeight: FontWeight.w900)),
                  content: const Text('Move your phone in a figure-8 pattern to calibrate the compass sensor for accurate Qibla direction.'),
                  actions: [
                    TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('OK')),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Qibla direction label
              Text('Qibla Direction',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14,
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5))),
              const SizedBox(height: 8),
              Text('${_direction.toStringAsFixed(1)}°',
                style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 36, color: AppColors.emerald)),
              const SizedBox(height: 40),
              // Compass
              SizedBox(
                width: 280, height: 280,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Outer ring
                    Container(
                      width: 280, height: 280,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isDark ? AppColors.darkCard : AppColors.cardLight,
                        border: Border.all(
                          color: AppColors.emerald.withValues(alpha: 0.3), width: 3,
                        ),
                        boxShadow: [BoxShadow(
                          color: AppColors.emerald.withValues(alpha: 0.2),
                          blurRadius: 30, spreadRadius: 5,
                        )],
                      ),
                    ),
                    // Direction markers
                    ..._buildDirectionMarkers(),
                    // Needle
                    Transform.rotate(
                      angle: _direction * (math.pi / 180),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.navigation_rounded, size: 60, color: AppColors.emerald),
                          const SizedBox(height: 4),
                          Container(
                            width: 3, height: 40,
                            decoration: BoxDecoration(
                              color: AppColors.emerald,
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Center dot
                    Container(
                      width: 16, height: 16,
                      decoration: BoxDecoration(
                        color: AppColors.emerald,
                        shape: BoxShape.circle,
                        boxShadow: [BoxShadow(color: AppColors.emerald.withValues(alpha: 0.4), blurRadius: 8)],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              // Kaaba icon
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.emeraldSurface,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.mosque_rounded, color: AppColors.emerald),
                    const SizedBox(width: 8),
                    const Text('Kaaba, Makkah', style: TextStyle(fontWeight: FontWeight.w900, color: AppColors.emerald)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildDirectionMarkers() {
    const directions = ['N', 'E', 'S', 'W'];
    return List.generate(4, (i) {
      final angle = i * 90.0 * (math.pi / 180);
      return Positioned(
        left: 140 + 110 * math.sin(angle) - 10,
        top: 140 - 110 * math.cos(angle) - 10,
        child: Text(directions[i], style: TextStyle(
          fontWeight: FontWeight.w900, fontSize: 16,
          color: directions[i] == 'N' ? Colors.red : Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.4),
        )),
      );
    });
  }
}
