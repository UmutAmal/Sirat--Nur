import 'dart:convert';
import 'dart:io';
import 'package:translator/translator.dart';

void main() async {
  final translator = GoogleTranslator();
  final enFile = File('lib/l10n/app_en.arb');
  final enContent =
      jsonDecode(await enFile.readAsString()) as Map<String, dynamic>;

  final keys = <String>[];
  final values = <String>[];

  for (var entry in enContent.entries) {
    if (entry.key.startsWith('@@')) continue;
    keys.add(entry.key);
    // Remove newlines from values so it doesn't break split
    values.add(entry.value.toString().replaceAll('\n', ' '));
  }

  final langs = [
    'fr',
    'de',
    'es',
    'pt',
    'it',
    'nl',
    'ru',
    'ur',
    'fa',
    'id',
    'ms',
    'bn',
    'bs',
    'zh',
    'ja',
    'ko',
    'sw',
    'hi',
    'uz',
    'az',
    'kk',
    'sq',
    'so',
    'ps',
    'ku',
    'ha',
    'am',
    'th',
    'tl',
    'ta',
    'pl',
    'uk',
    'ro',
    'bg',
    'el',
    'tg',
    'tk',
    'wo',
    'sd',
    'af',
    'ak',
    'ar',
    'as',
    'ay',
    'ba',
    'be',
    'bho',
    'bm',
    'ca',
    'ceb',
    'co',
    'cs',
    'cy',
    'da',
    'dv',
    'ee',
    'eo',
    'et',
    'eu',
    'fi',
    'fy',
    'ga',
    'gd',
    'gl',
    'gn',
    'gu',
    'haw',
    'he',
    'hmn',
    'hr',
    'ht',
    'hu',
    'hy',
    'ig',
    'ilo',
    'is',
    'jv',
    'ka',
    'km',
    'kn',
    'kri',
    'ky',
    'la',
    'lb',
    'lg',
    'ln',
    'lo',
    'lt',
    'lus',
    'lv',
    'mai',
    'mg',
    'mi',
    'mk',
    'ml',
    'mn',
    'mni',
    'mr',
    'mt',
    'my',
    'ne',
    'no',
    'nso',
    'ny',
    'om',
    'or',
    'os',
    'pa',
    'qu',
    'rw',
    'sa',
    'si',
    'sk',
    'sl',
    'sm',
    'sn',
    'sr',
    'st',
    'su',
    'sv',
    'te',
    'ti',
    'ts',
    'tt',
    'ug',
    'vi',
    'xh',
    'yi',
    'yo',
    'zu',
  ];

  final uniqueLangs = langs.toSet().toList();

  for (var lang in uniqueLangs) {
    if (lang == 'en' || lang == 'tr' || lang == 'ar') continue;

    // Google uses 'zh-cn' and 'zh-tw' not 'zh_CN'
    final apiLang = lang.replaceAll('_', '-');

    final outFile = File('lib/l10n/app_$lang.arb');
    if (await outFile.exists()) {
      continue; // Skip if already done
    }

    stdout.writeln('Translating to $lang ($apiLang)...');
    final result = <String, dynamic>{'@@locale': lang};

    int chunk = 40;
    for (int i = 0; i < keys.length; i += chunk) {
      final end = (i + chunk < keys.length) ? (i + chunk) : keys.length;
      final subKeys = keys.sublist(i, end);
      final subValues = values.sublist(i, end);

      final payload = subValues.join('\n');

      try {
        var trans = await translator.translate(
          payload,
          from: 'en',
          to: apiLang,
        );
        var translatedLines = trans.text.split('\n');

        if (translatedLines.length == subKeys.length) {
          for (int j = 0; j < subKeys.length; j++) {
            // Replace { target } formatting if it got translated to { hedef }
            var t = translatedLines[j].trim();
            // simple restore of {target} and {count} and {status}
            if (subValues[j].contains('{target}')) {
              t = t.replaceAll(RegExp(r'\{[^\}]+\}'), '{target}');
            }
            if (subValues[j].contains('{count}')) {
              t = t.replaceAll(RegExp(r'\{[^\}]+\}'), '{count}');
            }
            if (subValues[j].contains('{status}')) {
              t = t.replaceAll(RegExp(r'\{[^\}]+\}'), '{status}');
            }
            if (subValues[j].contains('{version}')) {
              t = t.replaceAll(RegExp(r'\{[^\}]+\}'), '{version}');
            }
            if (subValues[j].contains('{path}')) {
              t = t.replaceAll(RegExp(r'\{[^\}]+\}'), '{path}');
            }
            if (subValues[j].contains('{error}')) {
              t = t.replaceAll(RegExp(r'\{[^\}]+\}'), '{error}');
            }

            result[subKeys[j]] = t;
          }
        } else {
          stdout.writeln('Line mismatch in $lang chunk $i. Falling back...');
          for (int j = 0; j < subKeys.length; j++) {
            try {
              var singleT = await translator.translate(
                subValues[j],
                from: 'en',
                to: apiLang,
              );
              result[subKeys[j]] = singleT.text;
            } catch (e) {
              result[subKeys[j]] = subValues[j];
            }
          }
        }
      } catch (e) {
        stdout.writeln('Error with $lang: $e. Falling back to line by line');
        for (int j = 0; j < subKeys.length; j++) {
          try {
            var singleT = await translator.translate(
              subValues[j],
              from: 'en',
              to: apiLang,
            );
            result[subKeys[j]] = singleT.text;
          } catch (e2) {
            result[subKeys[j]] = subValues[j];
          }
        }
      }
    }

    JsonEncoder encoder = const JsonEncoder.withIndent('  ');
    await outFile.writeAsString(encoder.convert(result));
    stdout.writeln('Saved $lang');
  }
  stdout.writeln('Done translating!');
}
