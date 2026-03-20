#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Crowdin API - Upload File with Storage
"""

import sys
import io
import os
import json

# Fix encoding
sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8', errors='replace')

import requests

CROWDIN_TOKEN = "7b4f6d8fff3263903a426d33e63d4d92e45a468d44d1c5d4e2e22beca0110ef3900aa5f0121fcf35"
PROJECT_ID = "880874"

API_BASE = "https://api.crowdin.com/api/v2"
headers = {
    "Authorization": f"Bearer {CROWDIN_TOKEN}",
    "Accept": "application/json"
}

# Read file
file_path = "lib/l10n/app_en.arb"
with open(file_path, 'r', encoding='utf-8') as f:
    content = f.read()

print(f"[UPLOAD] Uploading {file_path}...")

import urllib3
urllib3.disable_warnings()

# Step 1: Upload to storage using raw binary
print("[STEP 1] Upload to storage...")
storage_resp = requests.post(
    f"{API_BASE}/storages/files",
    headers={
        "Authorization": f"Bearer {CROWDIN_TOKEN}",
        "Content-Type": "application/octet-stream"
    },
    data=content.encode('utf-8')
)

print(f"[STATUS] {storage_resp.status_code}")
if storage_resp.status_code not in [200, 201]:
    print(f"[ERROR] {storage_resp.text[:500]}")
else:
    storage_id = storage_resp.json().get('data', {}).get('id')
    print(f"[OK] Storage ID: {storage_id}")
    
    # Step 2: Add to project
    print("[STEP 2] Add file to project...")
    add_resp = requests.post(
        f"{API_BASE}/projects/{PROJECT_ID}/files",
        headers=headers,
        json={
            "storageId": storage_id,
            "name": "app_en.arb"
        }
    )
    
    print(f"[STATUS] {add_resp.status_code}")
    print(f"[RESPONSE] {add_resp.text[:500]}")
