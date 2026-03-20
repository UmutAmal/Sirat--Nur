import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:sirat_i_nur/core/widgets/islamic_decorations.dart';

class PremiumCard extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final bool enableGlow;
  final Color? glowColor;

  const PremiumCard({
    super.key, 
    required this.child, 
    this.onTap,
    this.padding = const EdgeInsets.all(20.0),
    this.margin = const EdgeInsets.only(bottom: 16),
    this.enableGlow = false,
    this.glowColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final primaryColor = glowColor ?? theme.colorScheme.primary;
    
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        gradient: LinearGradient(
          colors: [
            theme.colorScheme.surface.withValues(alpha: isDark ? 0.6 : 0.9),
            theme.colorScheme.surfaceContainerHighest.withValues(alpha: isDark ? 0.4 : 0.7),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: isDark ? 0.3 : 0.03),
            blurRadius: 30,
            offset: const Offset(0, 15),
          ),
          if (enableGlow)
            BoxShadow(
              color: primaryColor.withValues(alpha: 0.3),
              blurRadius: 30,
              spreadRadius: -5,
            ),
        ],
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: isDark ? 0.2 : 0.05),
          width: 1,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16), // Strong glass blur
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(32),
              child: Stack(
                children: [
                  // Islamic pattern decoration in corner
                  Positioned(
                    top: -10,
                    right: -10,
                    child: IslamicPatternDecoration(
                      size: 60,
                      color: primaryColor,
                      opacity: 0.08,
                    ),
                  ),
                  Padding(
                    padding: padding,
                    child: child,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Animated version of PremiumCard with fade-in animation
class AnimatedPremiumCard extends StatefulWidget {
  final Widget child;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final bool enableGlow;
  final Color? glowColor;
  final int animationDelay; // Delay in milliseconds

  const AnimatedPremiumCard({
    super.key, 
    required this.child, 
    this.onTap,
    this.padding = const EdgeInsets.all(20.0),
    this.margin = const EdgeInsets.only(bottom: 16),
    this.enableGlow = false,
    this.glowColor,
    this.animationDelay = 0,
  });

  @override
  State<AnimatedPremiumCard> createState() => _AnimatedPremiumCardState();
}

class _AnimatedPremiumCardState extends State<AnimatedPremiumCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
    
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
    
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.15),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic),
    );

    // Start animation after delay
    Future.delayed(Duration(milliseconds: widget.animationDelay), () {
      if (mounted) _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: SlideTransition(
        position: _slideAnimation,
        child: PremiumCard(
          onTap: widget.onTap,
          padding: widget.padding,
          margin: widget.margin,
          enableGlow: widget.enableGlow,
          glowColor: widget.glowColor,
          child: widget.child,
        ),
      ),
    );
  }
}
