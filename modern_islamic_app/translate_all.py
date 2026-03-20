#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Auto-translate Flutter ARB localization files to all available languages
Uses Google Translate via deep_translator library
"""

import sys
import io

# Fix Windows Unicode output
sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8', errors='replace')

import json
import os
import time
from pathlib import Path

# Install: pip install deep_translator requests
try:
    from deep_translator import GoogleTranslator
    print("OK - deep_translator imported successfully")
except ImportError:
    print("Installing deep_translator...")
    os.system("pip install deep_translator")
    from deep_translator import GoogleTranslator

# Configuration
L10N_DIR = Path("lib/l10n")
EN_TEMPLATE = L10N_DIR / "app_en.arb"
OUTPUT_DIR = L10N_DIR

# Google Translate supported languages only
# Format: {ISO_code: (google_translate_name, native_name)}
SUPPORTED_LANGUAGES = {
    'af': ('afrikaans', 'Afrikaans'),
    'sq': ('albanian', 'Shqip'),
    'am': ('amharic', 'Amharic'),
    'ar': ('arabic', 'العربية'),
    'hy': ('armenian', 'Հայերեն'),
    'as': ('assamese', 'Assamese'),
    'ay': ('aymara', 'Aymara'),
    'az': ('azerbaijani', 'Azərbaycan'),
    'bm': ('bambara', 'Bambara'),
    'eu': ('basque', 'Euskara'),
    'be': ('belarusian', 'Беларуская'),
    'bn': ('bengali', 'বাংলা'),
    'bs': ('bosnian', 'Bosanski'),
    'bg': ('bulgarian', 'Български'),
    'ca': ('catalan', 'Català'),
    'ceb': ('cebuano', 'Cebuano'),
    'ny': ('chichewa', 'Chichewa'),
    'zh-CN': ('chinese (simplified)', '中文'),
    'zh-TW': ('chinese (traditional)', '繁體中文'),
    'co': ('corsican', 'Corsu'),
    'hr': ('croatian', 'Hrvatski'),
    'cs': ('czech', 'Čeština'),
    'da': ('danish', 'Dansk'),
    'dv': ('dhivehi', 'Divehi'),
    'nl': ('dutch', 'Nederlands'),
    'en': ('english', 'English'),
    'eo': ('esperanto', 'Esperanto'),
    'et': ('estonian', 'Eesti'),
    'ee': ('ewe', 'Ewe'),
    'tl': ('filipino', 'Filipino'),
    'fi': ('finnish', 'Suomi'),
    'fr': ('french', 'Français'),
    'fy': ('frisian', 'Frysk'),
    'gl': ('galician', 'Galego'),
    'ka': ('georgian', 'ქართული'),
    'de': ('german', 'Deutsch'),
    'el': ('greek', 'Ελληνικά'),
    'gn': ('guarani', 'Guarani'),
    'gu': ('gujarati', 'ગુજરાતી'),
    'ht': ('haitian creole', 'Kreyòl Ayisyen'),
    'ha': ('hausa', 'Hausa'),
    'haw': ('hawaiian', 'Hawaiʻi'),
    'iw': ('hebrew', 'עברית'),
    'hi': ('hindi', 'हिन्दी'),
    'hmn': ('hmong', 'Hmong'),
    'hu': ('hungarian', 'Magyar'),
    'is': ('icelandic', 'Íslenska'),
    'ig': ('igbo', 'Igbo'),
    'id': ('indonesian', 'Indonesia'),
    'ga': ('irish', 'Gaeilge'),
    'it': ('italian', 'Italiano'),
    'ja': ('japanese', '日本語'),
    'jw': ('javanese', 'Jawa'),
    'kn': ('kannada', 'ಕನ್ನಡ'),
    'kk': ('kazakh', 'Қазақ'),
    'km': ('khmer', 'Khmer'),
    'rw': ('kinyarwanda', 'Kinyarwanda'),
    'ko': ('korean', '한국어'),
    'ku': ('kurdish (kurmanji)', 'Kurdî'),
    'ckb': ('kurdish (sorani)', 'کوردی'),
    'ky': ('kyrgyz', 'Кыргызча'),
    'lo': ('lao', 'Lao'),
    'la': ('latin', 'Latin'),
    'lv': ('latvian', 'Latviešu'),
    'ln': ('lingala', 'Lingala'),
    'lt': ('lithuanian', 'Lietuvių'),
    'lg': ('luganda', 'Luganda'),
    'lb': ('luxembourgish', 'Lëtzebuergesch'),
    'mk': ('macedonian', 'Македонски'),
    'mg': ('malagasy', 'Malagasy'),
    'ms': ('malay', 'Bahasa Melayu'),
    'ml': ('malayalam', 'മലയാളം'),
    'mt': ('maltese', 'Malti'),
    'mi': ('maori', 'Māori'),
    'mr': ('marathi', 'मराठी'),
    'mn': ('mongolian', 'Монгол'),
    'my': ('myanmar', 'Burmese'),
    'ne': ('nepali', 'नेपाली'),
    'no': ('norwegian', 'Norsk'),
    'or': ('odia (oriya)', 'Oriya'),
    'om': ('oromo', 'Oromo'),
    'ps': ('pashto', 'پښتو'),
    'fa': ('persian', 'فارسی'),
    'pl': ('polish', 'Polski'),
    'pt': ('portuguese', 'Português'),
    'pa': ('punjabi', 'ਪੰਜਾਬੀ'),
    'qu': ('quechua', 'Quechua'),
    'ro': ('romanian', 'Română'),
    'ru': ('russian', 'Русский'),
    'sm': ('samoan', 'Samoan'),
    'sa': ('sanskrit', 'Sanskrit'),
    'gd': ('scots gaelic', 'Gàidhlig'),
    'sr': ('serbian', 'Српски'),
    'st': ('sesotho', 'Sesotho'),
    'sn': ('shona', 'Shona'),
    'sd': ('sindhi', 'Sindhi'),
    'si': ('sinhala', 'Sinhala'),
    'sk': ('slovak', 'Slovenčina'),
    'sl': ('slovenian', 'Slovenščina'),
    'so': ('somali', 'Somali'),
    'es': ('spanish', 'Español'),
    'su': ('sundanese', 'Sunda'),
    'sw': ('swahili', 'Swahili'),
    'sv': ('swedish', 'Svenska'),
    'tg': ('tajik', 'Тоҷикӣ'),
    'ta': ('tamil', 'தமிழ்'),
    'tt': ('tatar', 'Tatar'),
    'te': ('telugu', 'తెలుగు'),
    'th': ('thai', 'ไทย'),
    'ti': ('tigrinya', 'Tigrinya'),
    'ts': ('tsonga', 'Tsonga'),
    'tr': ('turkish', 'Türkçe'),
    'tk': ('turkmen', 'Türkmen'),
    'uk': ('ukrainian', 'Українська'),
    'ur': ('urdu', 'اردو'),
    'ug': ('uyghur', 'Uyghur'),
    'uz': ('uzbek', 'Oʻzbek'),
    'vi': ('vietnamese', 'Tiếng Việt'),
    'cy': ('welsh', 'Cymraeg'),
    'xh': ('xhosa', 'Xhosa'),
    'yi': ('yiddish', 'יידיש'),
    'yo': ('yoruba', 'Yorùbá'),
    'zu': ('zulu', 'Zulu'),
}

# Languages already completed (manually with high quality)
COMPLETED_LANGUAGES = {'tr', 'ar', 'ur', 'id', 'ms', 'fa', 'bn', 'hi'}


def load_english_template():
    """Load English template"""
    with open(EN_TEMPLATE, 'r', encoding='utf-8') as f:
        return json.load(f)


def translate_text(text, target_lang):
    """Translate text using Google Translate"""
    try:
        translator = GoogleTranslator(source='en', target=target_lang)
        result = translator.translate(text)
        return result if result else text
    except Exception as e:
        print(f"  Error translating to {target_lang}: {e}")
        return text


def create_arb_file(lang_code, lang_name, translations):
    """Create ARB file for a language"""
    output_file = OUTPUT_DIR / f"app_{lang_code}.arb"
    
    arb_content = {"@@locale": lang_code}
    
    # Add all translations
    for key, value in translations.items():
        if key.startswith('@'):
            continue
        arb_content[key] = value
    
    # Write to file
    with open(output_file, 'w', encoding='utf-8') as f:
        json.dump(arb_content, f, ensure_ascii=False, indent=2)
    
    return output_file


def main():
    print("=" * 60)
    print("Flutter ARB Auto-Translator")
    print("=" * 60)
    
    # Load English template
    print(f"\n[D] Loading English template from: {EN_TEMPLATE}")
    en_data = load_english_template()
    
    # Get translation strings (exclude metadata keys)
    translation_keys = {k: v for k, v in en_data.items() 
                        if not k.startswith('@@') and not k.startswith('_')}
    
    print(f"[T] Found {len(translation_keys)} strings to translate")
    print(f"[L] Supported languages: {len(SUPPORTED_LANGUAGES)}")
    print(f"[C] Already completed: {len(COMPLETED_LANGUAGES)}")
    print(f"[R] Remaining: {len(SUPPORTED_LANGUAGES) - len(COMPLETED_LANGUAGES)}")
    
    print("\n[===]")
    print("Auto-translating all remaining languages...")
    
    # Translate to each language
    success_count = 0
    error_languages = []
    
    for lang_code, (gt_name, native_name) in SUPPORTED_LANGUAGES.items():
        # Skip already completed
        if lang_code in COMPLETED_LANGUAGES:
            print(f"[SKIP] [{lang_code}] {native_name} - Already done")
            continue
        
        print(f"\n[TRANSLATING] {native_name} ({lang_code})...")
        
        translations = {}
        keys = list(translation_keys.keys())
        
        for i, key in enumerate(keys):
            text = translation_keys[key]
            
            # Translate
            translated = translate_text(text, lang_code)
            translations[key] = translated
            
            # Progress
            if (i + 1) % 20 == 0:
                print(f"  Progress: {i+1}/{len(keys)}")
            
            # Rate limiting - small delay every 10 requests
            if (i + 1) % 10 == 0:
                time.sleep(0.5)
        
        # Create ARB file
        output_file = create_arb_file(lang_code, native_name, translations)
        success_count += 1
        print(f"  [OK] Created: {output_file.name}")
        
        # Rate limiting between languages
        time.sleep(1)
    
    print("\n" + "=" * 60)
    print(f"[COMPLETE] Total languages processed: {success_count}")
    print(f"[COMPLETE] Total files created: {success_count}")
    
    if error_languages:
        print(f"\n[WARN] Errors in: {', '.join(error_languages)}")
    
    print("\nNow run: flutter gen-l10n")
    print("Then: flutter build apk --debug")


if __name__ == "__main__":
    main()
