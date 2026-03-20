import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class LocationService {
  /// Retreives the current GPS position with full permission checks
  static Future<Position> getCurrentPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception('Location permissions are denied');
      }
    }
    
    if (permission == LocationPermission.deniedForever) {
      throw Exception('Location permissions are permanently denied.');
    } 

    return await Geolocator.getCurrentPosition();
  }

  /// Retreives human-readable placemarks (Country, City, ISO) from current coordinates
  static Future<Placemark?> getPlacemark(double latitude, double longitude) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(latitude, longitude);
      if (placemarks.isNotEmpty) {
        return placemarks.first;
      }
    } catch (e) {
      // Return null silently if reverse geocoding fails (network issues, etc.)
    }
    return null;
  }

  /// Auto-resolves the best application default Prayer Calculation Method based on Country Code
  static String? suggestCalculationMethod(Placemark placemark) {
    if (placemark.isoCountryCode == null) return null;
    
    // Switch on common ISO Country codes
    switch (placemark.isoCountryCode!.toUpperCase()) {
      case 'TR': // Turkey
      case 'CY': // Cyprus
      case 'AZ': // Azerbaijan
        return 'Turkey';
      case 'EG': // Egypt
      case 'SD': // Sudan
      case 'LB': // Lebanon
      case 'SY': // Syria
        return 'Egyptian';
      case 'SA': // Saudi Arabia
        return 'Umm Al-Qura';
      case 'PK': // Pakistan
      case 'IN': // India
      case 'BD': // Bangladesh
      case 'AF': // Afghanistan
        return 'Karachi';
      case 'AE': // UAE
      case 'OM': // Oman
      case 'BH': // Bahrain
        return 'Dubai';
      case 'QA': // Qatar
        return 'Qatar';
      case 'KW': // Kuwait
        return 'Kuwait';
      case 'SG': // Singapore
        return 'Singapore';
      case 'MY': // Malaysia
        return 'JAKIM (Malaysia)';
      case 'ID': // Indonesia
        return 'KEMENAG (Indonesia)';
      case 'MA': // Morocco
        return 'Morocco';
      case 'IR': // Iran
        return 'Tehran';
      case 'US': // USA
      case 'CA': // Canada
        return 'North America (ISNA)';
      case 'GB': // UK
      case 'FR': // France
      case 'DE': // Germany
      case 'IT': // Italy
      case 'ES': // Spain
      case 'RU': // Russia
      default:
        return 'Muslim World League'; // Global default mapping
    }
  }

  /// Auto-resolves the best application default Language based on Country Code
  static String? suggestLanguage(String? countryCode) {
    if (countryCode == null) return null;
    switch (countryCode.toUpperCase()) {
      case 'AD':
        return 'ca';
      case 'AE':
      case 'BH':
      case 'DZ':
      case 'EG':
      case 'EH':
      case 'IQ':
      case 'JO':
      case 'KM':
      case 'KW':
      case 'LB':
      case 'LY':
      case 'MA':
      case 'MR':
      case 'OM':
      case 'PS':
      case 'QA':
      case 'SA':
      case 'SD':
      case 'SY':
      case 'TN':
      case 'YE':
        return 'ar';
      case 'AF':
      case 'IR':
        return 'fa';
      case 'AG':
      case 'AI':
      case 'AQ':
      case 'AS':
      case 'AU':
      case 'BB':
      case 'BM':
      case 'BS':
      case 'BW':
      case 'BZ':
      case 'CA':
      case 'CC':
      case 'CK':
      case 'CX':
      case 'DM':
      case 'FJ':
      case 'FK':
      case 'FM':
      case 'GB':
      case 'GD':
      case 'GG':
      case 'GH':
      case 'GI':
      case 'GM':
      case 'GS':
      case 'GU':
      case 'GY':
      case 'HM':
      case 'IE':
      case 'IM':
      case 'IO':
      case 'JE':
      case 'JM':
      case 'KI':
      case 'KN':
      case 'KY':
      case 'LC':
      case 'LR':
      case 'MP':
      case 'MS':
      case 'MU':
      case 'MW':
      case 'NA':
      case 'NF':
      case 'NR':
      case 'NU':
      case 'NZ':
      case 'PG':
      case 'PN':
      case 'PW':
      case 'SB':
      case 'SG':
      case 'SH':
      case 'SL':
      case 'SS':
      case 'TC':
      case 'TO':
      case 'TT':
      case 'TV':
      case 'UM':
      case 'US':
      case 'VC':
      case 'VG':
      case 'VI':
      case 'WS':
      case 'ZA':
      case 'ZM':
      case 'ZW':
        return 'en';
      case 'AL':
        return 'sq';
      case 'AM':
        return 'hy';
      case 'AO':
      case 'BR':
      case 'CV':
      case 'GW':
      case 'MZ':
      case 'PT':
      case 'ST':
      case 'TL':
        return 'pt';
      case 'AR':
      case 'BO':
      case 'CL':
      case 'CO':
      case 'CR':
      case 'CU':
      case 'DO':
      case 'EC':
      case 'ES':
      case 'GQ':
      case 'GT':
      case 'HN':
      case 'MX':
      case 'NI':
      case 'PA':
      case 'PE':
      case 'PR':
      case 'PY':
      case 'SV':
      case 'UY':
      case 'VE':
        return 'es';
      case 'AT':
      case 'CH':
      case 'DE':
      case 'LI':
        return 'de';
      case 'AW':
      case 'BE':
      case 'BQ':
      case 'CW':
      case 'NL':
      case 'SR':
      case 'SX':
        return 'nl';
      case 'AX':
      case 'SE':
        return 'sv';
      case 'AZ':
        return 'az';
      case 'BA':
        return 'bs';
      case 'BD':
        return 'bn';
      case 'BF':
      case 'BI':
      case 'BJ':
      case 'BL':
      case 'CD':
      case 'CF':
      case 'CG':
      case 'CI':
      case 'CM':
      case 'DJ':
      case 'FR':
      case 'GA':
      case 'GF':
      case 'GN':
      case 'GP':
      case 'HT':
      case 'LU':
      case 'MC':
      case 'MF':
      case 'ML':
      case 'MQ':
      case 'NC':
      case 'NE':
      case 'PF':
      case 'PM':
      case 'RE':
      case 'SC':
      case 'SN':
      case 'TD':
      case 'TF':
      case 'TG':
      case 'VU':
      case 'WF':
      case 'YT':
        return 'fr';
      case 'BG':
        return 'bg';
      case 'BN':
      case 'MY':
        return 'ms';
      case 'BT':
        return 'dz';
      case 'BV':
      case 'NO':
      case 'SJ':
        return 'no';
      case 'BY':
        return 'be';
      case 'CN':
      case 'HK':
      case 'MO':
      case 'TW':
        return 'zh';
      case 'CY':
      case 'GR':
        return 'el';
      case 'CZ':
        return 'cs';
      case 'DK':
      case 'GL':
        return 'da';
      case 'EE':
        return 'et';
      case 'ER':
        return 'ti';
      case 'ET':
        return 'am';
      case 'FI':
        return 'fi';
      case 'FO':
        return 'fo';
      case 'GE':
        return 'ka';
      case 'HR':
        return 'hr';
      case 'HU':
        return 'hu';
      case 'ID':
        return 'id';
      case 'IL':
        return 'he';
      case 'IN':
        return 'hi';
      case 'IS':
        return 'is';
      case 'IT':
      case 'SM':
      case 'VA':
        return 'it';
      case 'JP':
        return 'ja';
      case 'KE':
      case 'TZ':
      case 'UG':
        return 'sw';
      case 'KG':
        return 'ky';
      case 'KH':
        return 'km';
      case 'KP':
      case 'KR':
        return 'ko';
      case 'KZ':
        return 'kk';
      case 'LA':
        return 'lo';
      case 'LK':
        return 'si';
      case 'LS':
      case 'SZ':
        return 'st';
      case 'LT':
        return 'lt';
      case 'LV':
        return 'lv';
      case 'MD':
      case 'RO':
        return 'ro';
      case 'ME':
      case 'RS':
        return 'sr';
      case 'MG':
        return 'mg';
      case 'MH':
        return 'mh';
      case 'MK':
        return 'mk';
      case 'MM':
        return 'my';
      case 'MN':
        return 'mn';
      case 'MT':
        return 'mt';
      case 'MV':
        return 'dv';
      case 'NG':
        return 'ha';
      case 'NP':
        return 'ne';
      case 'PH':
        return 'tl';
      case 'PK':
        return 'ur';
      case 'PL':
        return 'pl';
      case 'RU':
        return 'ru';
      case 'RW':
        return 'rw';
      case 'SI':
        return 'sl';
      case 'SK':
        return 'sk';
      case 'SO':
        return 'so';
      case 'TH':
        return 'th';
      case 'TJ':
        return 'tg';
      case 'TK':
      case 'TM':
        return 'tk';
      case 'TR':
        return 'tr';
      case 'UA':
        return 'uk';
      case 'UZ':
        return 'uz';
      case 'VN':
        return 'vi';
      default:
        return 'en';
    }
  }
}
