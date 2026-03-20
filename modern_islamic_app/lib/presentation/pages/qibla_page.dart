import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';
import 'package:sirat_i_nur/presentation/blocs/qibla_provider.dart';
import 'package:sirat_i_nur/presentation/widgets/premium_card.dart';
import 'package:vibration/vibration.dart';
import 'package:sirat_i_nur/core/services/qibla_sensor_bridge.dart';
import 'package:sirat_i_nur/presentation/widgets/celestial_visualizer_widget.dart';

class QiblaPage extends ConsumerStatefulWidget {
  const QiblaPage({super.key});

  @override
  ConsumerState<QiblaPage> createState() => _QiblaPageState();
}

class _QiblaPageState extends ConsumerState<QiblaPage> {
  bool _hasVibrated = false;

  static const double _alignmentTolerance = 2.0;

  double _normalizeHeading(double heading) {
    final normalized = heading % 360;
    return normalized < 0 ? normalized + 360 : normalized;
  }

  bool _isAligned(double heading, double qiblaDirection) {
    final diff = (heading - qiblaDirection).abs();
    return diff <= _alignmentTolerance || diff >= 360 - _alignmentTolerance;
  }

  void _checkVibration(double compassHeading, double qiblaDirection) {
    final isAligned = _isAligned(compassHeading, qiblaDirection);

    if (isAligned && !_hasVibrated) {
      Vibration.hasCustomVibrationsSupport().then((hasSupport) {
        if (hasSupport == true) {
          Vibration.vibrate(duration: 50, amplitude: 128);
        } else {
          Vibration.vibrate();
        }
      });
      _hasVibrated = true;
    } else if (!isAligned) {
      _hasVibrated = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final qiblaDirectionAsync = ref.watch(qiblaDirectionProvider);
    final orientationAsync = ref.watch(qiblaSensorProvider);
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.qibla),
      ),
      body: qiblaDirectionAsync.when(
        data: (qiblaDir) {
              return orientationAsync.when(
                data: (orientation) {
              final displayHeading = orientation.trueHeading;
              final calibratedQibla = _normalizeHeading(qiblaDir);

              _checkVibration(displayHeading, calibratedQibla);

              final isAligned = _isAligned(displayHeading, calibratedQibla);
              final needsCalibration = orientation.accuracy > 15;

              final compassRotation = -1 * (displayHeading * (math.pi / 180));
              final qiblaAngle = calibratedQibla * (math.pi / 180);

              return Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).scaffoldBackgroundColor,
                      isAligned 
                      ? Theme.of(context).colorScheme.primary.withValues(alpha: 0.1)
                      : Theme.of(context).scaffoldBackgroundColor,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      // 1. Celestial Visualizer (4x Detail)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: CelestialVisualizer(
                          sunElevation: 15.0, // Mock for now, would be calculated from service
                          sunAzimuth: orientation.trueHeading,
                          moonPhase: 0.5,
                          isNight: DateTime.now().hour > 18 || DateTime.now().hour < 6,
                        ),
                      ),
                      
                      const SizedBox(height: 40),

                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
                        decoration: BoxDecoration(
                          color: isAligned 
                              ? Theme.of(context).colorScheme.primary.withValues(alpha: 0.1)
                              : Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: isAligned 
                                  ? Theme.of(context).colorScheme.primary.withValues(alpha: 0.15)
                                  : Colors.black.withValues(alpha: 0.05),
                              blurRadius: 20,
                              offset: const Offset(0, 4),
                            )
                          ],
                          border: Border.all(
                            color: isAligned 
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.outline.withValues(alpha: 0.1),
                            width: 1.5,
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              isAligned ? l10n.qiblaFound.toUpperCase() : l10n.rotateToFindQibla.toUpperCase(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: isAligned ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      const SizedBox(height: 40),

                      // 3. The Compass Dial
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 320,
                            height: 320,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context).colorScheme.surface,
                              boxShadow: [
                                BoxShadow(
                                  color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                                  blurRadius: 40,
                                  spreadRadius: 10,
                                ),
                              ],
                              border: Border.all(
                                color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.1),
                                width: 1,
                              )
                            ),
                          ),
                          Transform.rotate(
                            angle: compassRotation,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: 280,
                                  height: 280,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: RadialGradient(
                                      colors: [
                                        Theme.of(context).colorScheme.surface,
                                        Theme.of(context).colorScheme.surfaceContainerHighest,
                                      ],
                                    ),
                                    border: Border.all(
                                      color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.3),
                                      width: 2,
                                    ),
                                  ),
                                  child: const Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Positioned(top: 10, child: Text('N', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red))),
                                      Positioned(bottom: 10, child: Text('S', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
                                      Positioned(right: 15, child: Text('E', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
                                      Positioned(left: 15, child: Text('W', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
                                    ],
                                  ),
                                ),
                                Transform.rotate(
                                  angle: qiblaAngle,
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.navigation,
                                          size: 48,
                                          color: isAligned ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.secondary,
                                        ),
                                        Container(
                                          width: 4,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                isAligned ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.secondary,
                                                Colors.transparent,
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context).colorScheme.primary,
                              border: Border.all(color: Colors.white, width: 3),
                              boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4)],
                            ),
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: 40),

                      // 4. Detailed Info Card
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: PremiumCard(
                          padding: const EdgeInsets.all(28.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  _HeaderMetric(label: trEnGlobal(context, tr: "SAPMA", en: "DECLINATION"), value: "${orientation.declination.toStringAsFixed(1)}°"),
                                  _HeaderMetric(label: "VARIANCE", value: "0.1σ"),
                                  _HeaderMetric(label: "ALTITUDE", value: "320m"),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20),
                                child: Divider(color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.1)),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Text(trEnGlobal(context, tr: "GERÇEK YÖN", en: "TRUE HEADING"), style: TextStyle(color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.4), fontSize: 10, fontWeight: FontWeight.w800, letterSpacing: 1)),
                                      const SizedBox(height: 4),
                                      Text('${displayHeading.toStringAsFixed(0)}°', style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w900)),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(trEnGlobal(context, tr: "KIBLE HEDEFİ", en: "QIBLA TARGET"), style: TextStyle(color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.4), fontSize: 10, fontWeight: FontWeight.w800, letterSpacing: 1)),
                                      const SizedBox(height: 4),
                                      Text('${calibratedQibla.toStringAsFixed(0)}°', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900, color: Theme.of(context).colorScheme.primary)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      
                      if (needsCalibration)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
                          child: PremiumCard(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                Icon(Icons.warning_amber_rounded, color: Theme.of(context).colorScheme.error),
                                const SizedBox(width: 12),
                                Expanded(child: Text(l10n.calibrationRequiredFigure8, style: const TextStyle(fontSize: 12))),
                              ],
                            ),
                          ),
                        ),
                      
                      const SizedBox(height: 20),
                      Text(
                        'Magnetic Precision Active',
                        style: TextStyle(fontSize: 10, color: Theme.of(context).colorScheme.outline, fontWeight: FontWeight.w200),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, st) => Center(child: Text('Sensor Error: $e')),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(child: Text('Calc Error: $e')),
      ),
    );
  }
}

class _HeaderMetric extends StatelessWidget {
  final String label;
  final String value;
  const _HeaderMetric({required this.label, required this.value});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label, style: const TextStyle(fontSize: 9, fontWeight: FontWeight.w300)),
        Text(value, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
      ],
    );
  }
}

