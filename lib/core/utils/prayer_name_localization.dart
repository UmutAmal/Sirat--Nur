/// Prayer name localization for all 20 supported languages.
class PrayerLocalizer {
  static String localize(String prayerName, String langCode) {
    return _translations[langCode]?[prayerName] ?? prayerName;
  }

  static const Map<String, Map<String, String>> _translations = {
    'en': {'Fajr': 'Fajr', 'Sunrise': 'Sunrise', 'Dhuhr': 'Dhuhr', 'Asr': 'Asr', 'Maghrib': 'Maghrib', 'Isha': 'Isha'},
    'tr': {'Fajr': 'İmsak', 'Sunrise': 'Güneş', 'Dhuhr': 'Öğle', 'Asr': 'İkindi', 'Maghrib': 'Akşam', 'Isha': 'Yatsı'},
    'ar': {'Fajr': 'الفجر', 'Sunrise': 'الشروق', 'Dhuhr': 'الظهر', 'Asr': 'العصر', 'Maghrib': 'المغرب', 'Isha': 'العشاء'},
    'de': {'Fajr': 'Fadschr', 'Sunrise': 'Sonnenaufgang', 'Dhuhr': 'Dhuhr', 'Asr': 'Asr', 'Maghrib': 'Maghrib', 'Isha': 'Ischa'},
    'fr': {'Fajr': 'Fajr', 'Sunrise': 'Lever du soleil', 'Dhuhr': 'Dohr', 'Asr': 'Asr', 'Maghrib': 'Maghreb', 'Isha': 'Isha'},
    'es': {'Fajr': 'Fayr', 'Sunrise': 'Amanecer', 'Dhuhr': 'Dhuhr', 'Asr': 'Asr', 'Maghrib': 'Magrib', 'Isha': 'Isha'},
    'pt': {'Fajr': 'Fajr', 'Sunrise': 'Nascer do sol', 'Dhuhr': 'Dhuhr', 'Asr': 'Asr', 'Maghrib': 'Maghrib', 'Isha': 'Isha'},
    'it': {'Fajr': 'Fajr', 'Sunrise': 'Alba', 'Dhuhr': 'Dhuhr', 'Asr': 'Asr', 'Maghrib': 'Maghrib', 'Isha': 'Isha'},
    'nl': {'Fajr': 'Fajr', 'Sunrise': 'Zonsopgang', 'Dhuhr': 'Dhuhr', 'Asr': 'Asr', 'Maghrib': 'Maghrib', 'Isha': 'Isha'},
    'ru': {'Fajr': 'Фаджр', 'Sunrise': 'Восход', 'Dhuhr': 'Зухр', 'Asr': 'Аср', 'Maghrib': 'Магриб', 'Isha': 'Иша'},
    'ur': {'Fajr': 'فجر', 'Sunrise': 'طلوع آفتاب', 'Dhuhr': 'ظہر', 'Asr': 'عصر', 'Maghrib': 'مغرب', 'Isha': 'عشاء'},
    'fa': {'Fajr': 'صبح', 'Sunrise': 'طلوع', 'Dhuhr': 'ظهر', 'Asr': 'عصر', 'Maghrib': 'مغرب', 'Isha': 'عشاء'},
    'id': {'Fajr': 'Subuh', 'Sunrise': 'Syuruq', 'Dhuhr': 'Dzuhur', 'Asr': 'Ashar', 'Maghrib': 'Maghrib', 'Isha': 'Isya'},
    'ms': {'Fajr': 'Subuh', 'Sunrise': 'Syuruk', 'Dhuhr': 'Zohor', 'Asr': 'Asar', 'Maghrib': 'Maghrib', 'Isha': 'Isyak'},
    'bn': {'Fajr': 'ফজর', 'Sunrise': 'সূর্যোদয়', 'Dhuhr': 'যোহর', 'Asr': 'আসর', 'Maghrib': 'মাগরিব', 'Isha': 'এশা'},
    'bs': {'Fajr': 'Sabah', 'Sunrise': 'Izlazak', 'Dhuhr': 'Podne', 'Asr': 'Ikindija', 'Maghrib': 'Akšam', 'Isha': 'Jacija'},
    'zh': {'Fajr': '晨礼', 'Sunrise': '日出', 'Dhuhr': '晌礼', 'Asr': '晡礼', 'Maghrib': '昏礼', 'Isha': '宵礼'},
    'ja': {'Fajr': 'ファジュル', 'Sunrise': '日の出', 'Dhuhr': 'ズフル', 'Asr': 'アスル', 'Maghrib': 'マグリブ', 'Isha': 'イシャー'},
    'ko': {'Fajr': '파즈르', 'Sunrise': '일출', 'Dhuhr': '주흐르', 'Asr': '아스르', 'Maghrib': '마그리브', 'Isha': '이샤'},
    'sw': {'Fajr': 'Alfajiri', 'Sunrise': 'Sunrise', 'Dhuhr': 'Adhuhuri', 'Asr': 'Alasiri', 'Maghrib': 'Magharibi', 'Isha': 'Ishaa'},
  };
}
