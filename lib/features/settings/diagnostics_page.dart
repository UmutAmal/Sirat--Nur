import 'package:flutter/material.dart';
class DiagnosticsPage extends StatelessWidget {
  const DiagnosticsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Diagnostics')),
      body: const Center(child: Text('Diagnostics', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900))),
    );
  }
}
