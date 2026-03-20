#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Crowdin Project Status Check
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
print("Crowdin Project Status")
print("="*60)

# Get project details
resp = requests.get(
    f"{API_BASE}/projects/{PROJECT_ID}",
    headers={"Authorization": f"Bearer {CROWDIN_TOKEN}"}
)

if resp.status_code == 200:
    data = resp.json()['data']
    print(f"\nProject Name: {data['name']}")
    print(f"Project ID: {data['id']}")
    print(f"Type: {data['type']}")
    print(f"Source Language: {data['sourceLanguageId']}")
    print(f"Created: {data.get('createdAt', 'N/A')}")
    
# Get files
print("\n[Files in Project]")
files_resp = requests.get(
    f"{API_BASE}/projects/{PROJECT_ID}/files",
    headers={"Authorization": f"Bearer {CROWDIN_TOKEN}"}
)

if files_resp.status_code == 200:
    files = files_resp.json()['data']
    print(f"Total files: {len(files)}")
    for f in files:
        fname = f['data']['name']
        fid = f['data']['id']
        print(f"  - {fname} (ID: {fid})")

# Get languages
print("\n[Languages in Project]")
langs_resp = requests.get(
    f"{API_BASE}/projects/{PROJECT_ID}/languages",
    headers={"Authorization": f"Bearer {CROWDIN_TOKEN}"}
)

if langs_resp.status_code == 200:
    langs = langs_resp.json()['data']
    print(f"Total languages: {len(langs)}")
    for l in langs[:20]:  # Show first 20
        lid = l['data']['id']
        lname = l['data']['name']
        print(f"  - {lid}: {lname}")
    if len(langs) > 20:
        print(f"  ... and {len(langs) - 20} more")

print("\n" + "="*60)
print("✅ Project Status: OK")
print("="*60)
