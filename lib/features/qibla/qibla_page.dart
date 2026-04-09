import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/services/qibla_sensor_bridge.dart';
import 'package:sirat_i_nur/core/utils/qibla_utils.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

class QiblaPage extends ConsumerStatefulWidget {
  const QiblaPage({super.key});

  @override
  ConsumerState<QiblaPage> createState() => _QiblaPageState();
}

class _QiblaPageState extends ConsumerState<QiblaPage> {
  bool _hasVibrated = false;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final settings = ref.watch(settingsProvider);
    final qiblaStream = ref.watch(qiblaSensorProvider);

    final userLat = settings.latitude ?? 41.0082; // Fallback to Istanbul
    final userLng = settings.longitude ?? 28.9784;
    final qiblaBearing = QiblaUtils.calculateQiblaDirection(userLat, userLng);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          l10n.qiblaDirection,
          style: const TextStyle(fontWeight: FontWeight.w800),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline_rounded),
            onPressed: () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: Text(
                    l10n.qiblaCalibration,
                    style: const TextStyle(fontWeight: FontWeight.w900),
                  ),
                  content: Text(l10n.calibrationRequiredFigure8),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(ctx),
                      child: Text(l10n.ok),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: isDark
                ? [AppColors.darkBg, AppColors.darkSurface]
                : [AppColors.emeraldSurface, Colors.white],
            stops: const [0.0, 0.4],
          ),
        ),
        child: SafeArea(
        child: qiblaStream.when(
            loading: () => const Center(
              child: CircularProgressIndicator(color: AppColors.emerald),
            ),
            error: (err, stack) => Center(
              child: Text(
                l10n.qiblaCompassErrorDetails(err.toString()),
                textAlign: TextAlign.center,
              ),
            ),
            data: (qiblaState) {
              final trueHeading = qiblaState.trueHeading;
              final needleAngle =
                  (qiblaBearing - trueHeading + settings.qiblaOffset) % 360;
              final compassAngle = -trueHeading % 360;

              // Check alignment for haptic feedback
              // If within 2 degrees of Qibla, vibrate.
              final diff = (needleAngle > 180 ? 360 - needleAngle : needleAngle)
                  .abs();
              final isAligned = diff < 2.0;

              if (isAligned && !_hasVibrated) {
                _hasVibrated = true;
                HapticFeedback.heavyImpact();
              } else if (!isAligned) {
                _hasVibrated = false;
              }

              return Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Info Banner
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: isAligned
                              ? AppColors.emerald
                              : (isDark
                                    ? Colors.white10
                                    : Colors.black.withValues(alpha: 0.05)),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: isAligned
                              ? [
                                  BoxShadow(
                                    color: AppColors.emerald.withValues(
                                      alpha: 0.4,
                                    ),
                                    blurRadius: 20,
                                    spreadRadius: 2,
                                  ),
                                ]
                              : [],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              isAligned
                                  ? Icons.check_circle_rounded
                                  : Icons.explore_rounded,
                              color: isAligned
                                  ? Colors.white
                                  : AppColors.emerald,
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              isAligned ? l10n.qiblaFound : l10n.turnDevice,
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 13,
                                color: isAligned
                                    ? Colors.white
                                    : Theme.of(context).colorScheme.onSurface,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 48),

                      // Premium 3D Compass Dial
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          // Outer glow
                          Container(
                            width: 320,
                            height: 320,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: isAligned
                                      ? AppColors.emerald.withValues(alpha: 0.2)
                                      : Colors.black.withValues(alpha: 0.05),
                                  blurRadius: 40,
                                  spreadRadius: 10,
                                ),
                              ],
                            ),
                          ),

                          // Rotating Base Dial
                          AnimatedRotation(
                            turns: compassAngle / 360,
                            duration: const Duration(
                              milliseconds: 200,
                            ), // Smooth updates
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                // The Dial background
                                Container(
                                  width: 300,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: isDark
                                        ? const Color(0xFF1E293B)
                                        : Colors.white,
                                    border: Border.all(
                                      color: isAligned
                                          ? AppColors.emerald
                                          : (isDark
                                                ? Colors.white12
                                                : Colors.black12),
                                      width: 8,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: isDark
                                            ? Colors.black54
                                            : Colors.grey.withValues(
                                                alpha: 0.3,
                                              ),
                                        blurRadius: 20,
                                      ),
                                    ],
                                  ),
                                ),

                                // Compass Ticks
                                ..._buildTicks(context),

                                // Compass Letters
                                ..._buildDirectionMarkers(context),
                              ],
                            ),
                          ),

                          // Target Qibla Marker (Kaaba icon on the ring)
                          AnimatedRotation(
                            turns: needleAngle / 360,
                            duration: const Duration(milliseconds: 200),
                            child: SizedBox(
                              width: 320,
                              height: 320, // slightly larger than dial
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: AppColors.emerald,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.emerald.withValues(
                                          alpha: 0.5,
                                        ),
                                        blurRadius: 10,
                                      ),
                                    ],
                                  ),
                                  child: const Icon(
                                    Icons.mosque_rounded,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // Center Node & Needle Line
                          AnimatedRotation(
                            turns: needleAngle / 360,
                            duration: const Duration(milliseconds: 200),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                // Guide line
                                Container(
                                  width: 4,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        AppColors.emerald,
                                        AppColors.emerald.withValues(
                                          alpha: 0.0,
                                        ),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                ),
                                // Center point
                                Container(
                                  width: 24,
                                  height: 24,
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: isDark
                                        ? AppColors.darkSurface
                                        : Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: AppColors.emerald,
                                      width: 3,
                                    ),
                                  ),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: AppColors.emerald,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                                // Balance line below center
                                Container(
                                  width: 2,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withValues(alpha: 0.2),
                                    borderRadius: BorderRadius.circular(1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 60),

                      // Values Bottom
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: _buildValueCard(
                              context,
                              l10n.qibla,
                              '${qiblaBearing.toStringAsFixed(1)}°',
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: _buildValueCard(
                              context,
                              l10n.compass,
                              '${trueHeading.toStringAsFixed(1)}°',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildValueCard(BuildContext context, String label, String value) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkSurface : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.withValues(alpha: 0.1)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.02),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Theme.of(
                context,
              ).colorScheme.onSurface.withValues(alpha: 0.5),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildDirectionMarkers(BuildContext context) {
    const directions = ['N', 'E', 'S', 'W'];
    return List.generate(4, (i) {
      final angle = i * 90.0 * (math.pi / 180);
      final isNorth = directions[i] == 'N';
      return Positioned(
        left: 150 + 115 * math.sin(angle) - 15,
        top: 150 - 115 * math.cos(angle) - 15,
        child: SizedBox(
          width: 30,
          height: 30,
          child: Center(
            child: Text(
              directions[i],
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: isNorth
                    ? Colors.redAccent
                    : Theme.of(
                        context,
                      ).colorScheme.onSurface.withValues(alpha: 0.5),
              ),
            ),
          ),
        ),
      );
    });
  }

  List<Widget> _buildTicks(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final tickColor = isDark ? Colors.white24 : Colors.black12;
    final majorTickColor = isDark ? Colors.white54 : Colors.black38;

    return List.generate(72, (i) {
      // every 5 degrees
      final angle = i * 5.0 * (math.pi / 180);
      final isMajor = i % 6 == 0; // every 30 degrees

      return Positioned(
        left: 150 + 135 * math.sin(angle) - (isMajor ? 1.5 : 1),
        top: 150 - 135 * math.cos(angle) - (isMajor ? 4 : 3),
        child: Transform.rotate(
          angle: angle,
          child: Container(
            width: isMajor ? 3 : 2,
            height: isMajor ? 8 : 6,
            decoration: BoxDecoration(
              color: isMajor ? majorTickColor : tickColor,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
      );
    });
  }
}
