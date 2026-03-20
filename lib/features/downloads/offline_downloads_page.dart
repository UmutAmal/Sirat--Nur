import 'package:flutter/material.dart';
class OfflineDownloadsPage extends StatelessWidget {
  const OfflineDownloadsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Offline Manager')),
      body: const Center(child: Text('Downloads', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900))),
    );
  }
}
