import 'package:flutter/material.dart';

class SovereignErrorBoundary extends StatelessWidget {
  final FlutterErrorDetails details;
  const SovereignErrorBoundary({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFFFD700).withValues(alpha: 0.3)),
            borderRadius: BorderRadius.circular(24),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.black, const Color(0xFFB8860B).withValues(alpha: 0.1)],
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.shield_outlined, color: Color(0xFFFFD700), size: 64),
              const SizedBox(height: 24),
              const Text(
                'SOVEREIGN PROTECTION',
                style: TextStyle(color: Color(0xFFFFD700), fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 3),
              ),
              const SizedBox(height: 12),
              const Text(
                'A visual or logic variance has been detected. The application has isolated the error to maintain data sovereignty.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70, fontSize: 13),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFD700),
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                child: const Text('RECOVER SESSION', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
