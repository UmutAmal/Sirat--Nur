import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;
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
              color: Colors.black.withValues(alpha: 0.1),
              boxShadow: [
                BoxShadow(
                  color: Colors.amber.withValues(alpha: 0.2),
                  blurRadius: 30,
                  spreadRadius: 5,
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
                      angle: _controller.value * (math.pi / 16),
                      child: child,
                    );
                  },
                  child: Container(
                    width: 260,
                    height: 260,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xFFFFD700).withValues(alpha: 0.5),
                        width: 4,
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
                      style: const TextStyle(
                        fontSize: 72,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Outfit',
                        color: Color(0xFFFFD700),
                        shadows: [
                          Shadow(color: Colors.black, blurRadius: 10),
                        ],
                      ),
                    ),
                    Text(
                      _getZikrLabel(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Total: $_count',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white38,
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
          icon: const Icon(Icons.refresh, color: Colors.white54),
          iconSize: 32,
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
