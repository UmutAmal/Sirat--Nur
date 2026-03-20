#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Crowdin API Direct - Using requests library
"""

import sys
import io
import os

# Fix encoding
sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8', errors='replace')

import json
import requests

CROWDIN_TOKEN = "7b4f6d8fff3263903a426d33e63d4d92e45a468d44d1c5d4e2e22beca0110ef3900aa5f0121fcf35"

# Test Crowdin API
print("[TEST] Testing Crowdin API connection...")

headers = {
    "Authorization": f"Bearer {CROWDIN_TOKEN}",
    "Accept": "application/json"
}

# Try to get user info
response = requests.get("https://api.crowdin.com/api/v2/user", headers=headers)
print(f"[STATUS] {response.status_code}")

if response.status_code == 200:
    user_data = response.json()
    user_info = user_data.get('data', {})
    print(f"[OK] Connected!")
    print(f"  User: {user_info.get('email', 'Unknown')}")
    print(f"  ID: {user_info.get('id')}")
    
    # Check for enterprise
    if 'organizationId' in user_info:
        print(f"  Organization ID: {user_info['organizationId']}")
else:
    print(f"[ERR] Failed: {response.text}")
