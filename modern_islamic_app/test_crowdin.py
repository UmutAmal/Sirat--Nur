#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Crowdin API Test - Upload translations and download
"""

import sys
import os
import io
import json

# Fix Windows encoding
sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8', errors='replace')
sys.stderr = io.TextIOWrapper(sys.stderr.buffer, encoding='utf-8', errors='replace')

CROWDIN_TOKEN = "7b4f6d8fff3263903a426d33e63d4d92e45a468d44d1c5d4e2e22beca0110ef3900aa5f0121fcf35"

# Try different import methods
try:
    from crowdin_api_client import CrowdinClient
    print("[OK] crowdin_api_client imported")
except ImportError:
    print("[ERR] Cannot import crowdin_api_client")
    sys.exit(1)

# Test connection
try:
    print("[TEST] Connecting to Crowdin...")
    client = CrowdinClient(CROWDIN_TOKEN)
    
    # Try to get user info
    user_info = client.user.get_auth_user()
    print(f"[OK] Connected! User: {user_info}")
    
except Exception as e:
    print(f"[ERR] Connection failed: {e}")
    print("\nThis token may not be a valid Crowdin API token.")
    print("Please make sure you:")
    print("1. Generated the token in Crowdin Profile Settings > API")
    print("2. Selected 'API' not 'GitHub' integration")
    print("3. Copied the token correctly (no extra spaces)")
