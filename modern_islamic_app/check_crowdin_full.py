#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Crowdin Project Full Status Check with Pagination
"""

import sys
import io

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8', errors='replace')

import requests
import urllib3
urllib3.disable_warnings()

CROWDIN_TOKEN = "7b4f6d8fff3263903a426d33e63d4d92e45a468d44d1c5d4e2e22beca0110ef3900aa5f0121fcf35"
PROJECT_ID = "880874"

API_BASE = "https://api.crowdin.com/api/v2"

print("="*60)
print("Crowdin Project - Full Status")
print("="*60)

# Get all files with pagination
all_files = []
limit = 100
offset = 0

while True:
    files_resp = requests.get(
        f"{API_BASE}/projects/{PROJECT_ID}/files?limit={limit}&offset={offset}",
        headers={"Authorization": f"Bearer {CROWDIN_TOKEN}"}
    )
    
    if files_resp.status_code != 200:
        print(f"Error: {files_resp.status_code}")
        break
    
    files = files_resp.json()['data']
    if not files:
        break
    
    all_files.extend(files)
    offset += limit
    
    if len(files) < limit:
        break

print(f"\n[Total Files: {len(all_files)}]")
print("-"*40)

# Show all files
for i, f in enumerate(all_files, 1):
    fname = f['data']['name']
    fid = f['data']['id']
    print(f"{i:3}. {fname} (ID: {fid})")

print("\n" + "="*60)

# Get all languages with pagination
print("\n[Languages]")
all_langs = []
offset = 0

while True:
    langs_resp = requests.get(
        f"{API_BASE}/projects/{PROJECT_ID}/languages?limit={limit}&offset={offset}",
        headers={"Authorization": f"Bearer {CROWDIN_TOKEN}"}
    )
    
    if langs_resp.status_code != 200:
        print(f"Error: {langs_resp.status_code}")
        break
    
    langs = langs_resp.json()['data']
    if not langs:
        break
    
    all_langs.extend(langs)
    offset += limit
    
    if len(langs) < limit:
        break

print(f"Total languages: {len(all_langs)}")
for l in all_langs[:30]:
    lid = l['data']['id']
    lname = l['data']['name']
    print(f"  - {lid}: {lname}")

print("\n✅ Done!")
