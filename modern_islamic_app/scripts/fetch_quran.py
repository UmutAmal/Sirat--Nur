import urllib.request
import json
import os
import time

def fetch_json(url):
    print(f"Fetching: {url}")
    with urllib.request.urlopen(url) as response:
        return json.loads(response.read().decode('utf-8'))

def fetch_quran():
    try:
        print("Starting Quran Fetch (camelCase)...")
        
        # Fetch Surah List
        surahs_data = fetch_json("https://api.alquran.cloud/v1/surah")
        surahs = surahs_data['data']
        
        with open("surahs_full.json", "w", encoding="utf-8") as f:
            json.dump(surahs, f, ensure_ascii=False, indent=2)

        editions = ["quran-uthmani", "en.sahih", "tr.ates"]
        data = {}
        
        for edition in editions:
            data[edition] = fetch_json(f"https://api.alquran.cloud/v1/quran/{edition}")['data']['surahs']
            time.sleep(1)

        full_quran = []
        for s_idx in range(114):
            surah_data = {
                "number": data["quran-uthmani"][s_idx]["number"],
                "name": data["quran-uthmani"][s_idx]["name"],
                "englishName": data["quran-uthmani"][s_idx]["englishName"],
                "englishNameTranslation": data["quran-uthmani"][s_idx]["englishNameTranslation"],
                "revelationType": data["quran-uthmani"][s_idx]["revelationType"],
                "ayahs": []
            }
            
            for a_idx in range(len(data["quran-uthmani"][s_idx]["ayahs"])):
                ayah = {
                    "number": data["quran-uthmani"][s_idx]["ayahs"][a_idx]["number"],
                    "text": data["quran-uthmani"][s_idx]["ayahs"][a_idx]["text"],
                    "numberInSurah": data["quran-uthmani"][s_idx]["ayahs"][a_idx]["numberInSurah"],
                    "juz": data["quran-uthmani"][s_idx]["ayahs"][a_idx]["juz"],
                    "enTranslation": data["en.sahih"][s_idx]["ayahs"][a_idx]["text"],
                    "trTranslation": data["tr.ates"][s_idx]["ayahs"][a_idx]["text"],
                }
                surah_data["ayahs"].append(ayah)
            
            full_quran.append(surah_data)
            if (s_idx + 1) % 10 == 0:
                print(f"Processed {s_idx + 1}/114 Surahs...")

        with open("full_quran.json", "w", encoding="utf-8") as f:
            json.dump(full_quran, f, ensure_ascii=False, indent=2)
        
        print("Success: Full Quran data saved to full_quran.json")
    
    except Exception as e:
        print(f"Error occurred: {e}")

if __name__ == "__main__":
    fetch_quran()
