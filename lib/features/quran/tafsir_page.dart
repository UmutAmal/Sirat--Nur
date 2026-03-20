import 'package:flutter/material.dart';
class TafsirPage extends StatelessWidget {
  final int surahNumber;
  final String surahName;
  const TafsirPage({super.key, required this.surahNumber, required this.surahName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tafsir: $surahName')),
      body: Center(child: Text('Tafsir for Surah $surahNumber', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900))),
    );
  }
}
