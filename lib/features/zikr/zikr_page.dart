import 'package:flutter/material.dart';
class ZikrPage extends StatelessWidget {
  const ZikrPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Zikr')),
      body: const Center(child: Text('Tasbih Counter', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900))),
    );
  }
}
