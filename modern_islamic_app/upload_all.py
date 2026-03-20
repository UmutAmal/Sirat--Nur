#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Crowdin API - Upload ALL Translation Files
"""

import sys
import io
import os

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8', errors='replace')

import requests
import urllib3
urllib3.disable_warnings()

CROWDIN_TOKEN = "7b4f6d8fff3263903a426d33e63d4d92e45a468d44d1c5d4e2e22beca0110ef3900aa5f0121fcf35"
PROJECT_ID = "880874"

API_BASE = "https://api.crowdin.com/api/v2"

# List of languages to upload
LANGUAGES = [
    ('tr', 'Turkish'),
    ('ar', 'Arabic'),
    ('ur', 'Urdu'),
    ('id', 'Indonesian'),
    ('ms', 'Malay'),
    ('fa', 'Persian'),
    ('bn', 'Bengali'),
    ('hi', 'Hindi'),
]

# Languages already in the project (manually done)
DONE_LANGUAGES = {'tr', 'ar', 'ur', 'id', 'ms', 'fa', 'bn', 'hi'}

print("="*50)
print("Crowdin - Upload All Translations")
print("="*50)

# First, add target languages to project
print("\n[1] Adding target languages...")
for code, name in LANGUAGES:
    if code in DONE_LANGUAGES:
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
        print(f"  [OK] Added: {name}")
    else:
        print(f"  [SKIP] {name}: {resp.status_code}")

# Now upload translation files
print("\n[2] Uploading translation files...")
l10n_dir = "lib/l10n"

for code, name in LANGUAGES:
    if code in DONE_LANGUAGES:
        print(f"  [SKIP] {name} - already done")
        continue
    
    arb_file = f"{l10n_dir}/app_{code}.arb"
    if not os.path.exists(arb_file):
        print(f"  [MISSING] {arb_file}")
        continue
    
    # Upload to storage
    with open(arb_file, 'r', encoding='utf-8') as f:
        content = f.read()
    
    print(f"  [UPLOAD] {name}...")
    
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
        print(f"    [ERR] Storage: {storage_resp.status_code}")
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
        print(f"    [OK] Added: {name}")
    else:
        print(f"    [ERR] Add: {add_resp.status_code} - {add_resp.text[:100]}")

print("\n[DONE] All files uploaded!")
print("\nNow go to https://crowdin.com/project/way-of-allah to translate.")
