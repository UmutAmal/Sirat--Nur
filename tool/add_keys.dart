import 'dart:io';

void main() {
  stderr.writeln(
    'tool/add_keys.dart is retired because it can seed English fallback copy '
    'into non-English locale files. Add new keys to app_en.arb and app_tr.arb, '
    'then use tool/sync_arb_keys.dart plus a reviewed '
    'tool/translate_arb_keys.dart batch.',
  );
  exitCode = 64;
}
