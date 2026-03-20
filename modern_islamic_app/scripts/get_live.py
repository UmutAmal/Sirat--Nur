import urllib.request
import re

def get_live_id(query):
    url = f'https://www.youtube.com/results?search_query={query}&sp=EgJAAQ%253D%253D'
    req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'})
    try:
        html = urllib.request.urlopen(req).read().decode('utf-8')
        match = re.search(r'"videoId":"([a-zA-Z0-9_-]{11})"', html)
        if match:
            return match.group(1)
    except Exception as e:
        print(f"Error for {query}: {e}")
    return None

makkah = get_live_id('makkah+live+tv')
madinah = get_live_id('madinah+live+tv')
print(f'Makkah: {makkah}\nMadinah: {madinah}')
