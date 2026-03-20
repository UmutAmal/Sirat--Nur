import 'package:flutter/material.dart';
class PlacesMapPage extends StatelessWidget {
  const PlacesMapPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nearby Mosques')),
      body: const Center(child: Text('Map View', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900))),
    );
  }
}
