String resolveHadithCollectionName(String id, String languageCode) {
  if (languageCode == 'tr') {
    switch (id) {
      case 'bukhari':
        return 'Sahih-i Buhârî';
      case 'muslim':
        return 'Sahih-i Müslim';
      case 'tirmidhi':
        return 'Sünen-i Tirmizî';
      case 'abudawud':
        return 'Sünen-i Ebû Dâvûd';
      case 'nasai':
        return 'Sünen-i Nesâî';
      case 'ibnmajah':
        return 'Sünen-i İbn Mâce';
      default:
        return id;
    }
  }

  switch (id) {
    case 'bukhari':
      return 'Sahih al-Bukhari';
    case 'muslim':
      return 'Sahih Muslim';
    case 'tirmidhi':
      return 'Jami at-Tirmidhi';
    case 'abudawud':
      return 'Sunan Abu Dawud';
    case 'nasai':
      return "Sunan an-Nasa'i";
    case 'ibnmajah':
      return 'Sunan Ibn Majah';
    default:
      return id;
  }
}
