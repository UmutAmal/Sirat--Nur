import 'package:flutter/material.dart';
class JuzReadingPage extends StatelessWidget {
  final int juzNumber;
  final String title;
  const JuzReadingPage({super.key, required this.juzNumber, required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('Juz $juzNumber', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w900))),
    );
  }
}
