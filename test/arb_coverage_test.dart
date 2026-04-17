import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ARB coverage', () {
    final template = _readArb('lib/l10n/app_en.arb');
    final requiredKeys = template.keys
        .where((key) => !key.startsWith('@@') && !key.startsWith('@'))
        .toList();

    test('all arb files contain every template message key', () {
      final arbFiles = Directory('lib/l10n')
          .listSync()
          .whereType<File>()
          .where((file) => file.path.endsWith('.arb'))
          .where((file) => file.uri.pathSegments.last.startsWith('app_'));

      for (final file in arbFiles) {
        final arb = _readArb(file.path);
        final missing = requiredKeys
            .where((key) => !arb.containsKey(key))
            .toList(growable: false);

        expect(
          missing,
          isEmpty,
          reason: '${file.path} is missing message keys: $missing',
        );
      }
    });

    test(
      'all arb files contain placeholder metadata for templated messages',
      () {
        final metadataKeys = template.keys
            .where((key) => key.startsWith('@') && key != '@@locale')
            .toList();

        final arbFiles = Directory('lib/l10n')
            .listSync()
            .whereType<File>()
            .where((file) => file.path.endsWith('.arb'))
            .where((file) => file.uri.pathSegments.last.startsWith('app_'));

        for (final file in arbFiles) {
          final arb = _readArb(file.path);
          final missing = metadataKeys
              .where((key) => !arb.containsKey(key))
              .toList(growable: false);

          expect(
            missing,
            isEmpty,
            reason: '${file.path} is missing metadata keys: $missing',
          );
        }
      },
    );

    test('arb message values do not contain batch debris', () {
      final arbFiles = Directory('lib/l10n')
          .listSync()
          .whereType<File>()
          .where((file) => file.path.endsWith('.arb'))
          .where((file) => file.uri.pathSegments.last.startsWith('app_'));

      for (final file in arbFiles) {
        final arb = _readArb(file.path);

        for (final entry in arb.entries) {
          final key = entry.key;
          final value = entry.value;
          if (key.startsWith('@') || value is! String) continue;

          final normalized = value.replaceAll('\r\n', '\n');
          final hasUnexpectedLineBreak =
              normalized.contains('\n') &&
              !_allowedMultilineMessageKeys.contains(key);

          expect(
            hasUnexpectedLineBreak,
            isFalse,
            reason:
                '${file.path} contains an unexpected line break in "$key": '
                '$normalized',
          );

          for (final debris in _translationBatchDebris) {
            expect(
              normalized.startsWith(debris),
              isFalse,
              reason:
                  '${file.path} contains translation batch debris in "$key": '
                  '$normalized',
            );
          }

          for (final debris in _translationBatchFragments) {
            expect(
              normalized.contains(debris),
              isFalse,
              reason:
                  '${file.path} contains translation batch debris in "$key": '
                  '$normalized',
            );
          }

          expect(
            _hasRepeatedWordRun(normalized),
            isFalse,
            reason:
                '${file.path} contains a repeated-word run in "$key": '
                '$normalized',
          );
        }
      }
    });

    test('legacy missingEnglish diagnostic key stays removed', () {
      final arbFiles = Directory('lib/l10n')
          .listSync()
          .whereType<File>()
          .where((file) => file.path.endsWith('.arb'))
          .where((file) => file.uri.pathSegments.last.startsWith('app_'));

      for (final file in arbFiles) {
        final arb = _readArb(file.path);

        expect(
          arb.containsKey('missingEnglish'),
          isFalse,
          reason:
              '${file.path} still contains the unused missingEnglish message',
        );
        expect(
          arb.containsKey('@missingEnglish'),
          isFalse,
          reason: '${file.path} still contains unused missingEnglish metadata',
        );
      }

      final generatedFiles = Directory('lib/l10n')
          .listSync()
          .whereType<File>()
          .where((file) => file.path.endsWith('.dart'))
          .where(
            (file) =>
                file.uri.pathSegments.last.startsWith('app_localizations'),
          );

      for (final file in generatedFiles) {
        final contents = file.readAsStringSync();

        expect(
          contents.contains('missingEnglish'),
          isFalse,
          reason:
              '${file.path} still exposes the unused missingEnglish API member',
        );
      }
    });
  });
}

Map<String, dynamic> _readArb(String path) {
  return jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
}

const _allowedMultilineMessageKeys = {'chatbotOfflinePrompt'};

const _translationBatchDebris = {
  'ukax mä juk’a pachanakanwa.\n',
  'a ni.\n',
  'के लिये।\n',
  'इति .\n',
  'ዝብል ቃል ንምርካብ ኣብዚ ንጠውቅ።\n',
};

const _translationBatchFragments = {
  'Telecharger Complete',
  'Telechargement Failed',
  'Telecharger Manager',
  'Telechargement Manager',
  'Télécharger Complete',
  'Téléchargement Failed',
  'Télécharger Manager',
  'Téléchargement Manager',
  'Fichier Téléchargées',
  'Filew Téléchargements',
};

bool _hasRepeatedWordRun(String value) {
  final words = value
      .split(RegExp(r'\s+'))
      .where((word) => word.trim().isNotEmpty)
      .map((word) => word.trim())
      .toList(growable: false);

  var previous = '';
  var runLength = 0;
  for (final word in words) {
    if (word == previous) {
      runLength += 1;
    } else {
      previous = word;
      runLength = 1;
    }

    if (runLength >= 6) {
      return true;
    }
  }

  return false;
}
