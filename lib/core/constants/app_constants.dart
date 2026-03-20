/// All supported languages with native names for the language picker.
class AppLanguage {
  final String code;
  final String nativeName;
  final String englishName;

  const AppLanguage({
    required this.code,
    required this.nativeName,
    required this.englishName,
  });
}

const List<AppLanguage> supportedLanguages = [
  AppLanguage(code: 'en', nativeName: 'English', englishName: 'English'),
  AppLanguage(code: 'tr', nativeName: 'Türkçe', englishName: 'Turkish'),
  AppLanguage(code: 'ar', nativeName: 'العربية', englishName: 'Arabic'),
  AppLanguage(code: 'de', nativeName: 'Deutsch', englishName: 'German'),
  AppLanguage(code: 'fr', nativeName: 'Français', englishName: 'French'),
  AppLanguage(code: 'es', nativeName: 'Español', englishName: 'Spanish'),
  AppLanguage(code: 'pt', nativeName: 'Português', englishName: 'Portuguese'),
  AppLanguage(code: 'it', nativeName: 'Italiano', englishName: 'Italian'),
  AppLanguage(code: 'nl', nativeName: 'Nederlands', englishName: 'Dutch'),
  AppLanguage(code: 'ru', nativeName: 'Русский', englishName: 'Russian'),
  AppLanguage(code: 'ur', nativeName: 'اردو', englishName: 'Urdu'),
  AppLanguage(code: 'fa', nativeName: 'فارسی', englishName: 'Persian'),
  AppLanguage(code: 'id', nativeName: 'Bahasa Indonesia', englishName: 'Indonesian'),
  AppLanguage(code: 'ms', nativeName: 'Bahasa Melayu', englishName: 'Malay'),
  AppLanguage(code: 'bn', nativeName: 'বাংলা', englishName: 'Bengali'),
  AppLanguage(code: 'bs', nativeName: 'Bosanski', englishName: 'Bosnian'),
  AppLanguage(code: 'zh', nativeName: '中文', englishName: 'Chinese'),
  AppLanguage(code: 'ja', nativeName: '日本語', englishName: 'Japanese'),
  AppLanguage(code: 'ko', nativeName: '한국어', englishName: 'Korean'),
  AppLanguage(code: 'sw', nativeName: 'Kiswahili', englishName: 'Swahili'),
];

/// Comprehensive global city database with timezone offsets, countries, and coordinates.
class CityData {
  final String name;
  final String country;
  final String countryCode;
  final double lat;
  final double lng;
  final String timezone;

  const CityData({
    required this.name,
    required this.country,
    required this.countryCode,
    required this.lat,
    required this.lng,
    required this.timezone,
  });
}

const List<CityData> globalCities = [
  // Turkey
  CityData(name: 'Istanbul', country: 'Turkey', countryCode: 'TR', lat: 41.0082, lng: 28.9784, timezone: 'Europe/Istanbul'),
  CityData(name: 'Ankara', country: 'Turkey', countryCode: 'TR', lat: 39.9334, lng: 32.8597, timezone: 'Europe/Istanbul'),
  CityData(name: 'Izmir', country: 'Turkey', countryCode: 'TR', lat: 38.4192, lng: 27.1287, timezone: 'Europe/Istanbul'),
  CityData(name: 'Bursa', country: 'Turkey', countryCode: 'TR', lat: 40.1826, lng: 29.0665, timezone: 'Europe/Istanbul'),
  CityData(name: 'Konya', country: 'Turkey', countryCode: 'TR', lat: 37.8746, lng: 32.4932, timezone: 'Europe/Istanbul'),
  CityData(name: 'Antalya', country: 'Turkey', countryCode: 'TR', lat: 36.8844, lng: 30.7056, timezone: 'Europe/Istanbul'),
  // Saudi Arabia
  CityData(name: 'Makkah', country: 'Saudi Arabia', countryCode: 'SA', lat: 21.3891, lng: 39.8579, timezone: 'Asia/Riyadh'),
  CityData(name: 'Madinah', country: 'Saudi Arabia', countryCode: 'SA', lat: 24.5247, lng: 39.5692, timezone: 'Asia/Riyadh'),
  CityData(name: 'Riyadh', country: 'Saudi Arabia', countryCode: 'SA', lat: 24.7136, lng: 46.6753, timezone: 'Asia/Riyadh'),
  CityData(name: 'Jeddah', country: 'Saudi Arabia', countryCode: 'SA', lat: 21.5433, lng: 39.1728, timezone: 'Asia/Riyadh'),
  // Egypt
  CityData(name: 'Cairo', country: 'Egypt', countryCode: 'EG', lat: 30.0444, lng: 31.2357, timezone: 'Africa/Cairo'),
  CityData(name: 'Alexandria', country: 'Egypt', countryCode: 'EG', lat: 31.2001, lng: 29.9187, timezone: 'Africa/Cairo'),
  // UAE
  CityData(name: 'Dubai', country: 'UAE', countryCode: 'AE', lat: 25.2048, lng: 55.2708, timezone: 'Asia/Dubai'),
  CityData(name: 'Abu Dhabi', country: 'UAE', countryCode: 'AE', lat: 24.4539, lng: 54.3773, timezone: 'Asia/Dubai'),
  // Pakistan
  CityData(name: 'Islamabad', country: 'Pakistan', countryCode: 'PK', lat: 33.6844, lng: 73.0479, timezone: 'Asia/Karachi'),
  CityData(name: 'Karachi', country: 'Pakistan', countryCode: 'PK', lat: 24.8607, lng: 67.0011, timezone: 'Asia/Karachi'),
  CityData(name: 'Lahore', country: 'Pakistan', countryCode: 'PK', lat: 31.5497, lng: 74.3436, timezone: 'Asia/Karachi'),
  // Indonesia / Malaysia
  CityData(name: 'Jakarta', country: 'Indonesia', countryCode: 'ID', lat: -6.2088, lng: 106.8456, timezone: 'Asia/Jakarta'),
  CityData(name: 'Kuala Lumpur', country: 'Malaysia', countryCode: 'MY', lat: 3.1390, lng: 101.6869, timezone: 'Asia/Kuala_Lumpur'),
  // Bangladesh
  CityData(name: 'Dhaka', country: 'Bangladesh', countryCode: 'BD', lat: 23.8103, lng: 90.4125, timezone: 'Asia/Dhaka'),
  // Iran
  CityData(name: 'Tehran', country: 'Iran', countryCode: 'IR', lat: 35.6892, lng: 51.3890, timezone: 'Asia/Tehran'),
  // Iraq / Jordan / Syria
  CityData(name: 'Baghdad', country: 'Iraq', countryCode: 'IQ', lat: 33.3152, lng: 44.3661, timezone: 'Asia/Baghdad'),
  CityData(name: 'Amman', country: 'Jordan', countryCode: 'JO', lat: 31.9454, lng: 35.9284, timezone: 'Asia/Amman'),
  CityData(name: 'Damascus', country: 'Syria', countryCode: 'SY', lat: 33.5138, lng: 36.2765, timezone: 'Asia/Damascus'),
  CityData(name: 'Jerusalem', country: 'Palestine', countryCode: 'PS', lat: 31.7683, lng: 35.2137, timezone: 'Asia/Jerusalem'),
  // North Africa
  CityData(name: 'Casablanca', country: 'Morocco', countryCode: 'MA', lat: 33.5731, lng: -7.5898, timezone: 'Africa/Casablanca'),
  CityData(name: 'Tunis', country: 'Tunisia', countryCode: 'TN', lat: 36.8065, lng: 10.1815, timezone: 'Africa/Tunis'),
  CityData(name: 'Algiers', country: 'Algeria', countryCode: 'DZ', lat: 36.7372, lng: 3.0863, timezone: 'Africa/Algiers'),
  // Sub-Saharan Africa
  CityData(name: 'Lagos', country: 'Nigeria', countryCode: 'NG', lat: 6.5244, lng: 3.3792, timezone: 'Africa/Lagos'),
  CityData(name: 'Nairobi', country: 'Kenya', countryCode: 'KE', lat: -1.2921, lng: 36.8219, timezone: 'Africa/Nairobi'),
  CityData(name: 'Dar es Salaam', country: 'Tanzania', countryCode: 'TZ', lat: -6.7924, lng: 39.2083, timezone: 'Africa/Dar_es_Salaam'),
  CityData(name: 'Cape Town', country: 'South Africa', countryCode: 'ZA', lat: -33.9249, lng: 18.4241, timezone: 'Africa/Johannesburg'),
  // Europe
  CityData(name: 'London', country: 'United Kingdom', countryCode: 'GB', lat: 51.5074, lng: -0.1278, timezone: 'Europe/London'),
  CityData(name: 'Berlin', country: 'Germany', countryCode: 'DE', lat: 52.5200, lng: 13.4050, timezone: 'Europe/Berlin'),
  CityData(name: 'Paris', country: 'France', countryCode: 'FR', lat: 48.8566, lng: 2.3522, timezone: 'Europe/Paris'),
  CityData(name: 'Amsterdam', country: 'Netherlands', countryCode: 'NL', lat: 52.3676, lng: 4.9041, timezone: 'Europe/Amsterdam'),
  CityData(name: 'Madrid', country: 'Spain', countryCode: 'ES', lat: 40.4168, lng: -3.7038, timezone: 'Europe/Madrid'),
  CityData(name: 'Rome', country: 'Italy', countryCode: 'IT', lat: 41.9028, lng: 12.4964, timezone: 'Europe/Rome'),
  CityData(name: 'Vienna', country: 'Austria', countryCode: 'AT', lat: 48.2082, lng: 16.3738, timezone: 'Europe/Vienna'),
  CityData(name: 'Brussels', country: 'Belgium', countryCode: 'BE', lat: 50.8503, lng: 4.3517, timezone: 'Europe/Brussels'),
  CityData(name: 'Stockholm', country: 'Sweden', countryCode: 'SE', lat: 59.3293, lng: 18.0686, timezone: 'Europe/Stockholm'),
  CityData(name: 'Oslo', country: 'Norway', countryCode: 'NO', lat: 59.9139, lng: 10.7522, timezone: 'Europe/Oslo'),
  CityData(name: 'Sarajevo', country: 'Bosnia', countryCode: 'BA', lat: 43.8563, lng: 18.4131, timezone: 'Europe/Sarajevo'),
  CityData(name: 'Moscow', country: 'Russia', countryCode: 'RU', lat: 55.7558, lng: 37.6173, timezone: 'Europe/Moscow'),
  // Americas
  CityData(name: 'New York', country: 'United States', countryCode: 'US', lat: 40.7128, lng: -74.0060, timezone: 'America/New_York'),
  CityData(name: 'Los Angeles', country: 'United States', countryCode: 'US', lat: 34.0522, lng: -118.2437, timezone: 'America/Los_Angeles'),
  CityData(name: 'Toronto', country: 'Canada', countryCode: 'CA', lat: 43.6532, lng: -79.3832, timezone: 'America/Toronto'),
  CityData(name: 'São Paulo', country: 'Brazil', countryCode: 'BR', lat: -23.5505, lng: -46.6333, timezone: 'America/Sao_Paulo'),
  CityData(name: 'Buenos Aires', country: 'Argentina', countryCode: 'AR', lat: -34.6037, lng: -58.3816, timezone: 'America/Argentina/Buenos_Aires'),
  // Central/South Asia
  CityData(name: 'Tashkent', country: 'Uzbekistan', countryCode: 'UZ', lat: 41.2995, lng: 69.2401, timezone: 'Asia/Tashkent'),
  CityData(name: 'Baku', country: 'Azerbaijan', countryCode: 'AZ', lat: 40.4093, lng: 49.8671, timezone: 'Asia/Baku'),
  CityData(name: 'Kabul', country: 'Afghanistan', countryCode: 'AF', lat: 34.5553, lng: 69.2075, timezone: 'Asia/Kabul'),
  // East Asia / Oceania
  CityData(name: 'Tokyo', country: 'Japan', countryCode: 'JP', lat: 35.6762, lng: 139.6503, timezone: 'Asia/Tokyo'),
  CityData(name: 'Seoul', country: 'South Korea', countryCode: 'KR', lat: 37.5665, lng: 126.9780, timezone: 'Asia/Seoul'),
  CityData(name: 'Beijing', country: 'China', countryCode: 'CN', lat: 39.9042, lng: 116.4074, timezone: 'Asia/Shanghai'),
  CityData(name: 'Sydney', country: 'Australia', countryCode: 'AU', lat: -33.8688, lng: 151.2093, timezone: 'Australia/Sydney'),
  CityData(name: 'Auckland', country: 'New Zealand', countryCode: 'NZ', lat: -36.8485, lng: 174.7633, timezone: 'Pacific/Auckland'),
  // Kuwait / Qatar / Bahrain / Oman
  CityData(name: 'Kuwait City', country: 'Kuwait', countryCode: 'KW', lat: 29.3759, lng: 47.9774, timezone: 'Asia/Kuwait'),
  CityData(name: 'Doha', country: 'Qatar', countryCode: 'QA', lat: 25.2854, lng: 51.5310, timezone: 'Asia/Qatar'),
  CityData(name: 'Manama', country: 'Bahrain', countryCode: 'BH', lat: 26.2285, lng: 50.5860, timezone: 'Asia/Bahrain'),
  CityData(name: 'Muscat', country: 'Oman', countryCode: 'OM', lat: 23.5880, lng: 58.3829, timezone: 'Asia/Muscat'),
];
