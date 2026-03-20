import 'package:flutter/material.dart';

class QuranWord {
  final String arabic;
  final String translation;

  const QuranWord({required this.arabic, required this.translation});
}

class WordByWordRenderer extends StatelessWidget {
  final List<QuranWord> words;
  final TextStyle textStyle;
  final bool isPremium;

  const WordByWordRenderer({
    super.key,
    required this.words,
    required this.textStyle,
    required this.isPremium,
  });

  @override
  Widget build(BuildContext context) {
    if (!isPremium) {
      // Free users just see the standard joined text
      return Text(
        words.map((w) => w.arabic).join(' '),
        style: textStyle,
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
      );
    }

    return Wrap(
      alignment: WrapAlignment.end,
      textDirection: TextDirection.rtl,
      spacing: 12.0,
      runSpacing: 16.0,
      children: words.map((word) {
        return _WordWidget(word: word, textStyle: textStyle);
      }).toList(),
    );
  }
}

class _WordWidget extends StatelessWidget {
  final QuranWord word;
  final TextStyle textStyle;

  const _WordWidget({required this.word, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Show translation tooltip or bottom sheet on tap
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(word.translation, style: const TextStyle(fontSize: 18)),
                ),
                Text(
                  word.arabic,
                  style: const TextStyle(
                    fontFamily: 'Amiri',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            duration: const Duration(seconds: 2),
            behavior: SnackBarBehavior.floating,
          ),
        );
      },
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.05),
        ),
        child: Column(
          children: [
            Text(
              word.arabic,
              style: textStyle,
              textDirection: TextDirection.rtl,
            ),
            const SizedBox(height: 4),
            Text(
              word.translation,
              style: TextStyle(
                fontSize: textStyle.fontSize! * 0.45,
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
