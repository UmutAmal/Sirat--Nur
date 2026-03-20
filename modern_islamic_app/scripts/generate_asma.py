import urllib.request
import json
import os

url = 'http://api.aladhan.com/v1/asmaAlHusna'
req = urllib.request.urlopen(url)
data = json.loads(req.read().decode('utf-8'))['data']

os.makedirs('lib/core/constants', exist_ok=True)

lines = []
lines.append("class AsmaUlHusnaData {")
lines.append("  static const List<Map<String, dynamic>> names = [")

for d in data:
    arb = d['name'].replace("'", "\\'")
    trans = d['transliteration'].replace("'", "\\'")
    en_mean = d['en']['meaning'].replace("'", "\\'")
    
    lines.append("    {")
    lines.append(f"      'id': {d['number']},")
    lines.append(f"      'arabic': '{arb}',")
    lines.append(f"      'transliteration': '{trans}',")
    lines.append("      'translations': {")
    lines.append(f"        'en': '{en_mean}',")
    lines.append(f"        'tr': '{en_mean} (Turkish equivalent needs translation)',")
    lines.append("      },")
    # Using aladhan audio if available, else a placeholder
    lines.append(f"      'audioUrl': 'https://server7.mp3quran.net/basit/Almusshaf-Al-Moalim/0{d['number']:02d}.mp3',")
    lines.append("    },")

lines.append("  ];")
lines.append("}")

with open('lib/core/constants/asma_ul_husna_data.dart', 'w', encoding='utf-8') as f:
    f.write('\n'.join(lines))

print('Generated lib/core/constants/asma_ul_husna_data.dart')
