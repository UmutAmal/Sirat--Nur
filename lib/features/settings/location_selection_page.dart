import 'package:flutter/material.dart';
class LocationSelectionPage extends StatelessWidget {
  const LocationSelectionPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select Location')),
      body: const Center(child: Text('Location Selection', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900))),
    );
  }
}
