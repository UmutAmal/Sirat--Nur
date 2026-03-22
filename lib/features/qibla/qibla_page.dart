import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/services/qibla_sensor_bridge.dart';
import 'package:sirat_i_nur/core/utils/qibla_utils.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';

class QiblaPage extends ConsumerWidget {
  const QiblaPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    final settings = ref.watch(settingsProvider);
    final qiblaStream = ref.watch(qiblaSensorProvider);

    final userLat = settings.latitude ?? 41.0082; // Fallback to Istanbul
    final userLng = settings.longitude ?? 28.9784;
    final qiblaBearing = QiblaUtils.calculateQiblaDirection(userLat, userLng);

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
      body: qiblaStream.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Compass Error: $err')),
        data: (qiblaState) {
          // qiblaState.trueHeading is the phone's heading relative to North
          // To point the needle to Qibla, we rotate the needle by (Qibla Bearing - True Heading)
          final trueHeading = qiblaState.trueHeading;
          
          // Apply user offset from settings if needed
          final needleAngle = (qiblaBearing - trueHeading + settings.qiblaOffset) % 360;
          final compassAngle = -trueHeading % 360;

          return Center(
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
                  Text('${qiblaBearing.toStringAsFixed(1)}°',
                    style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 36, color: AppColors.emerald)),
                  const SizedBox(height: 40),
                  // Compass
                  SizedBox(
                    width: 280, height: 280,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // Outer ring rotating with magnetic north
                        Transform.rotate(
                          angle: compassAngle * (math.pi / 180),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
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
                              ..._buildDirectionMarkers(context),
                            ],
                          ),
                        ),
                        // Fixed Needle pointing to Qibla
                        Transform.rotate(
                          angle: needleAngle * (math.pi / 180),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.navigation_rounded, size: 60, color: AppColors.emerald),
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
          );
        },
      ),
    );
  }

  List<Widget> _buildDirectionMarkers(BuildContext context) {
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
