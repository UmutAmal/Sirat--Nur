import 'package:flutter/material.dart';
class LiveTvPage extends StatelessWidget {
  const LiveTvPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Live TV')),
      body: const Center(child: Text('Makkah & Madinah Live', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900))),
    );
  }
}
