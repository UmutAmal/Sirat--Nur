import 'package:flutter/material.dart';
class HadithSearchPage extends StatelessWidget {
  const HadithSearchPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search Hadith')),
      body: const Center(child: Text('Hadith Search', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900))),
    );
  }
}
