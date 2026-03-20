#!/usr/bin/env python3
"""
Script to generate translation files for all languages.
This uses a simple approach - for each language, we create the file with translations.
Note: This is a simplified version. For production, use professional translations.
"""

import os
import json
import shutil

# Read the English template
def load_template():
    with open('lib/l10n/app_en.arb', 'r', encoding='utf-8') as f:
        return json.load(f)

# Major languages to translate (with their names)
MAJOR_LANGUAGES = {
    'tr': 'Türkçe',
    'ar': 'العربية',
    'ur': 'اردو',
    'id': 'Bahasa Indonesia',
    'ms': 'Bahasa Melayu',
    'fa': 'فارسی',
    'bn': 'বাংলা',
    'hi': 'हिन्दी',
    'ta': 'தமிழ்',
    'te': 'తెలుగు',
    'ml': 'മലയാളം',
    'kn': 'ಕನ್ನಡ',
    'th': 'ไทย',
    'vi': 'Tiếng Việt',
    'ru': 'Русский',
    'zh': '中文',
    'ja': '日本語',
    'ko': '한국어',
    'de': 'Deutsch',
    'fr': 'Français',
    'es': 'Español',
    'pt': 'Português',
    'it': 'Italiano',
    'nl': 'Nederlands',
    'pl': 'Polski',
    'uk': 'Українська',
    'sq': 'Shqip',
    'sr': 'Српски',
    'bg': 'Български',
    'ro': 'Română',
    'hu': 'Magyar',
    'el': 'Ελληνικά',
    'he': 'עברית',
    'ku': 'کوردی',
    'so': 'Somali',
    'sw': 'Kiswahili',
    'am': 'አማርኛ',
    'ha': 'Hausa',
    'yo': 'Yorùbá',
}

# For now, we'll copy the template and add locale info
# In a real app, you'd use a translation API

def main():
    template = load_template()
    
    # List all existing ARB files
    l10n_dir = 'lib/l10n'
    existing_files = [f for f in os.listdir(l10n_dir) if f.startswith('app_') and f.endswith('.arb')]
    
    print(f"Found {len(existing_files)} language files")
    
    # For Turkish, we already have a full translation
    # For others, let's just ensure they have the locale key
    
    for filename in existing_files:
        if filename == 'app_en.arb':
            continue
            
        filepath = os.path.join(l10n_dir, filename)
        
        # Read existing file
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Check if it already has @@locale
        if '"@@locale"' not in content:
            # Extract locale code from filename (e.g., app_tr.arb -> tr)
            locale = filename.replace('app_', '').replace('.arb', '')
            
            # Add locale to the file
            if content.strip().startswith('{'):
                # Remove trailing } and add locale
                content = content.rstrip()
                if content.endswith('}'):
                    content = content[:-1]
                    content += ',\n  "@@locale": "' + locale + '"\n}'
            
            with open(filepath, 'w', encoding='utf-8') as f:
                f.write(content)
            
            print(f"Added locale to {filename}")
    
    print("Done!")

if __name__ == '__main__':
    main()
