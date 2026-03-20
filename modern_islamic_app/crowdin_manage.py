#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Crowdin API - Upload and Download Translations
"""

import sys
import io
import os
import json

# Fix encoding
sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8', errors='replace')

import requests

CROWDIN_TOKEN = "7b4f6d8fff3263903a426d33e63d4d92e45a468d44d1c5d4e2e22beca0110ef3900aa5f0121fcf35"

API_BASE = "https://api.crowdin.com/api/v2"

headers = {
    "Authorization": f"Bearer {CROWDIN_TOKEN}",
    "Accept": "application/json",
    "Content-Type": "application/json"
}

def get_projects():
    """Get all projects"""
    response = requests.get(f"{API_BASE}/projects", headers=headers)
    if response.status_code == 200:
        return response.json().get('data', [])
    return []

def create_project(name, identifier):
    """Create new project"""
    # Try with minimal required fields
    data = {
        "name": name,
        "identifier": identifier,
        "sourceLanguageId": "en"
    }
    response = requests.post(f"{API_BASE}/projects", headers=headers, json=data)
    if response.status_code == 201:
        return response.json().get('data', {})
    print(f"[ERR] Create project failed: {response.text}")
    return None

def upload_file(project_id, file_path, name):
    """Upload source file to Crowdin"""
    
    # First, upload to storage
    print(f"  [UPLOAD] Uploading {name} to storage...")
    
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    import urllib3
    urllib3.disable_warnings()
    
    # Try as binary - without setting content-type
    files = {'file': (name, content.encode('utf-8'))}
    storage_resp = requests.post(
        f"https://storage.crowdin.com/api/v2/storages",
        headers={"Authorization": f"Bearer {CROWDIN_TOKEN}"},
        files=files
    )
    
    print(f"  [DEBUG] Storage response: {storage_resp.status_code}")
    
    if storage_resp.status_code not in [200, 201]:
        print(f"  [ERR] Storage upload failed: {storage_resp.text[:300]}")
        return False
    
    storage_id = storage_resp.json().get('data', {}).get('id')
    print(f"  [OK] Storage ID: {storage_id}")
    
    # Now add file to project
    print(f"  [ADD] Adding {name} to project...")
    data = {
        "storageId": storage_id,
        "name": name
    }
    
    add_resp = requests.post(
        f"{API_BASE}/projects/{project_id}/files",
        headers=headers,
        json=data
    )
    
    if add_resp.status_code in [200, 201]:
        print(f"  [OK] Added: {name}")
        return True
    else:
        print(f"  [ERR] Add failed: {add_resp.text[:200]}")
        return False

def add_language(project_id, lang_code):
    """Add target language"""
    url = f"{API_BASE}/projects/{project_id}/languages"
    data = {"languageId": lang_code}
    response = requests.post(url, headers=headers, json=data)
    return response.status_code in [200, 201]

def main():
    print("="*50)
    print("Crowdin Translation Manager")
    print("="*50)
    
    # Get projects
    print("\n[1] Getting projects...")
    projects = get_projects()
    
    project_id = None
    if projects:
        print(f"Found {len(projects)} project(s):")
        for p in projects:
            print(f"  - {p['data']['name']} (ID: {p['data']['id']})")
            if 'way-of-allah' in p['data']['identifier'].lower():
                project_id = p['data']['id']
    else:
        print("No projects found")
    
    # Create project if not exists
    if not project_id:
        print("\n[2] Creating project...")
        proj = create_project("Way of Allah", "way-of-allah")
        if proj:
            project_id = proj['id']
            print(f"Created project with ID: {project_id}")
        else:
            print("[ERR] Could not create project")
            return
    
    print(f"\nUsing project ID: {project_id}")
    
    # List source files
    print("\n[3] Source files in project:")
    files_resp = requests.get(f"{API_BASE}/projects/{project_id}/files", headers=headers)
    if files_resp.status_code == 200:
        files = files_resp.json().get('data', [])
        for f in files:
            print(f"  - {f['data']['name']}")
    
    # Upload English template
    print("\n[4] Uploading app_en.arb...")
    en_file = "lib/l10n/app_en.arb"
    if os.path.exists(en_file):
        upload_file(project_id, en_file, "app_en.arb")
    else:
        print(f"[ERR] File not found: {en_file}")

if __name__ == "__main__":
    main()
