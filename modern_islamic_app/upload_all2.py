#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Crowdin API - Upload ALL Translation Files (Including incomplete)
"""

import sys
import io
import os
import glob

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8', errors='replace')

import requests
import urllib3
urllib3.disable_warnings()

CROWDIN_TOKEN = "7b4f6d8fff3263903a426d33e63d4d92e45a468d44d1c5d4e2e22beca0110ef3900aa5f0121fcf35"
PROJECT_ID = "880874"

API_BASE = "https://api.crowdin.com/api/v2"

# Already completed languages (manually with high quality)
COMPLETED = {'tr', 'ar', 'ur', 'id', 'ms', 'fa', 'bn', 'hi'}

# All language codes
ALL_LANGS = [
    'aa', 'ab', 'ae', 'af', 'ak', 'am', 'an', 'ar', 'as', 'av', 'ay', 'az',
    'ba', 'be', 'bg', 'bh', 'bi', 'bm', 'bn', 'bo', 'br', 'bs', 'ca', 'ce',
    'ch', 'co', 'cr', 'cs', 'cu', 'cv', 'cy', 'da', 'de', 'dv', 'dz', 'ee',
    'el', 'eo', 'es', 'et', 'eu', 'fa', 'ff', 'fi', 'fj', 'fo', 'fr', 'fy',
    'ga', 'gd', 'gl', 'gn', 'gu', 'gv', 'ha', 'he', 'hi', 'ho', 'hr', 'ht',
    'hu', 'hy', 'hz', 'ia', 'ie', 'ig', 'ii', 'ik', 'io', 'is', 'it', 'iu',
    'ja', 'jv', 'ka', 'kg', 'ki', 'kj', 'kk', 'kl', 'km', 'kn', 'ko', 'kr',
    'ks', 'ku', 'kv', 'kw', 'ky', 'la', 'lb', 'lg', 'li', 'ln', 'lo', 'lt',
    'lu', 'lv', 'mg', 'mh', 'mi', 'mk', 'ml', 'mn', 'mr', 'ms', 'mt', 'my',
    'na', 'nb', 'nd', 'ne', 'ng', 'nl', 'nn', 'no', 'nr', 'nv', 'ny', 'oc',
    'oj', 'om', 'or', 'os', 'pa', 'pi', 'pl', 'ps', 'pt', 'qu', 'rm', 'rn',
    'ro', 'ru', 'rw', 'sa', 'sc', 'sd', 'se', 'sg', 'si', 'sk', 'sl', 'sm',
    'sn', 'so', 'sq', 'sr', 'ss', 'st', 'su', 'sv', 'sw', 'ta', 'te', 'tg',
    'th', 'ti', 'tk', 'tl', 'tn', 'to', 'ts', 'tt', 'tw', 'ty', 'ug', 'uk',
    'uz', 've', 'vi', 'vo', 'wa', 'wo', 'xh', 'yi', 'yo', 'za', 'zh', 'zu'
]

# Languages we already have files for
existing_files = glob.glob("lib/l10n/app_*.arb")
existing_codes = set()
for f in existing_files:
    basename = os.path.basename(f)
    if basename.startswith('app_') and basename.endswith('.arb'):
        code = basename[4:-4]  # Remove 'app_' and '.arb'
        existing_codes.add(code)

print("="*60)
print("Crowdin - Upload ALL Languages")
print("="*60)

l10n_dir = "lib/l10n"
uploaded = 0
failed = 0

# First, add target languages to project
print("\n[1] Adding target languages to project...")
for code in existing_codes:
    if code in COMPLETED:
        continue
    
    resp = requests.post(
        f"{API_BASE}/projects/{PROJECT_ID}/languages",
        headers={
            "Authorization": f"Bearer {CROWDIN_TOKEN}",
            "Content-Type": "application/json"
        },
        json={"languageId": code}
    )
    if resp.status_code in [200, 201]:
        print(f"  [OK] Added language: {code}")
    elif resp.status_code == 400:
        print(f"  [SKIP] Language exists: {code}")
    else:
        print(f"  [WARN] {code}: {resp.status_code}")

# Now upload all translation files
print(f"\n[2] Uploading {len(existing_codes)} translation files...")

for code in sorted(existing_codes):
    if code in COMPLETED:
        print(f"  [SKIP] {code} - already done locally")
        continue
    
    arb_file = f"{l10n_dir}/app_{code}.arb"
    if not os.path.exists(arb_file):
        continue
    
    # Upload to storage
    with open(arb_file, 'r', encoding='utf-8') as f:
        content = f.read()
    
    print(f"  [UPLOAD] {code}...", end=" ")
    
    # Upload to storage
    storage_resp = requests.post(
        f"{API_BASE}/storages",
        headers={
            "Authorization": f"Bearer {CROWDIN_TOKEN}",
            "Content-Type": "application/octet-stream",
            "Crowdin-API-FileName": f"app_{code}.arb"
        },
        data=content.encode('utf-8')
    )
    
    if storage_resp.status_code not in [200, 201]:
        print(f"FAILED ({storage_resp.status_code})")
        failed += 1
        continue
    
    storage_id = storage_resp.json().get('data', {}).get('id')
    
    # Add to project
    add_resp = requests.post(
        f"{API_BASE}/projects/{PROJECT_ID}/files",
        headers={
            "Authorization": f"Bearer {CROWDIN_TOKEN}",
            "Content-Type": "application/json"
        },
        json={
            "storageId": storage_id,
            "name": f"app_{code}.arb"
        }
    )
    
    if add_resp.status_code in [200, 201]:
        print("OK!")
        uploaded += 1
    else:
        print(f"FAILED ({add_resp.status_code})")
        failed += 1

print(f"\n[DONE] Uploaded: {uploaded}, Failed: {failed}")
print("\nGo to https://crowdin.com/project/way-of-allah to translate!")
