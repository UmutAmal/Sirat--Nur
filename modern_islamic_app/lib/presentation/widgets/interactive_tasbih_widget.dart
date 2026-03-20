import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sirat_i_nur/core/utils/royal_shaders.dart';

class InteractiveTasbihWidget extends StatefulWidget {
  const InteractiveTasbihWidget({super.key});

  @override
  State<InteractiveTasbihWidget> createState() => _InteractiveTasbihWidgetState();
}

class _InteractiveTasbihWidgetState extends State<InteractiveTasbihWidget> with SingleTickerProviderStateMixin {
  int _count = 0;
  late AnimationController _controller;
  double _dragOffset = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  void _onTap() {
    HapticFeedback.mediumImpact();
    setState(() {
      _count++;
    });
    _controller.forward(from: 0);
  }

  void _reset() {
    HapticFeedback.vibrate();
    setState(() {
      _count = 0;
    });
  }

  String _getZikrLabel() {
    if (_count <= 33) return 'SUBHANALLAH';
    if (_count <= 66) return 'ALHAMDULILLAH';
    if (_count <= 99) return 'ALLAHU AKBAR';
    return 'LAA ILAAHA ILLALLAH';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: _onTap,
          onVerticalDragUpdate: (details) {
            setState(() {
              _dragOffset += details.delta.dy;
              if (_dragOffset > 50) {
                _onTap();
                _dragOffset = 0;
              }
            });
          },
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.05),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                  blurRadius: 40,
                  spreadRadius: 10,
                ),
              ],
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Silk Texture Background
                ClipOval(
                  child: CustomPaint(
                    size: const Size(300, 300),
                    painter: SilkPainter(),
                  ),
                ),
                
                // Animated Bead Ring
                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Transform.rotate(
                      angle: _controller.value * (0.2), // Subtle rotation
                      child: child,
                    );
                  },
                  child: Container(
                    width: 260,
                    height: 260,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                        width: 2,
                      ),
                    ),
                  ),
                ),

                // Count Display
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '${(_count - 1) % 33 + 1}',
                      style: TextStyle(
                        fontSize: 84,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Outfit',
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    Text(
                      _getZikrLabel(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 3,
                        fontWeight: FontWeight.w800,
                        color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.8),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Total: $_count',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.4),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 40),
        IconButton(
          onPressed: _reset,
          icon: Icon(Icons.refresh_rounded, color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.3)),
          iconSize: 28,
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
