import 'package:flutter/material.dart';
class QiblaPage extends StatelessWidget {
  const QiblaPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Qibla')),
      body: const Center(child: Icon(Icons.explore_rounded, size: 120, color: Color(0xFF2E7D32))),
    );
  }
}
