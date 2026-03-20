import 'package:flutter/material.dart';

class TajweedTextRenderer extends StatelessWidget {
  final String text;
  final TextStyle style;
  final bool isPremium;

  const TajweedTextRenderer({
    super.key,
    required this.text,
    required this.style,
    required this.isPremium,
  });

  @override
  Widget build(BuildContext context) {
    if (!isPremium) {
      // Standard rendering for free users
      return Text(
        text,
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
        style: style,
      );
    }

    // --- Mock Tajweed Logic for Premium Users ---
    // In a production app, the raw 'text' string would contain HTML or JSON tags from the database
    // specifying exact rules (e.g., <ikhafa>...<idgham_shafawi>... etc).
    // For MVP demonstration, we will color specific Arabic letters to simulate Tajweed.
    
    final List<TextSpan> spans = [];
    
    // Arabic letters typically associated with rules
    const idghamLetters = ['م', 'ن', 'و', 'ي', 'ر', 'ل'];
    const qalqalahLetters = ['ق', 'ط', 'ب', 'ج', 'د'];

    for (int i = 0; i < text.length; i++) {
      final char = text[i];
      Color? color;

      if (idghamLetters.contains(char)) {
        color = Colors.green; // Represents Ghunnah / Idgham
      } else if (qalqalahLetters.contains(char)) {
        color = Colors.blue; // Represents Qalqalah
      }

      spans.add(
        TextSpan(
          text: char,
          style: style.copyWith(color: color),
        ),
      );
    }

    return RichText(
      textAlign: TextAlign.right,
      textDirection: TextDirection.rtl,
      text: TextSpan(children: spans),
    );
  }
}
