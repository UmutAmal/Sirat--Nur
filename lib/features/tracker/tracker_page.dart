import 'package:flutter/material.dart';
class TrackerPage extends StatelessWidget {
  const TrackerPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ibadah Tracker')),
      body: const Center(child: Text('Prayer & Quran Tracker', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900))),
    );
  }
}
