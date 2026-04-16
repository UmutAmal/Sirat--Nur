import 'package:adhan/adhan.dart';

class PrayerCalculationProfile {
  final String calculationMethod;
  final String madhab;
  final String sourceName;
  final String sourceUrl;

  const PrayerCalculationProfile({
    required this.calculationMethod,
    required this.madhab,
    required this.sourceName,
    required this.sourceUrl,
  });
}

const String customPrayerMethod = 'Custom';
const String diyanetPrayerMethod = 'Diyanet';
const String egyptianPrayerMethod = 'Egyptian';
const String karachiPrayerMethod = 'Karachi';
const String ummAlQuraPrayerMethod = 'Umm al-Qura';
const String dubaiPrayerMethod = 'Dubai';
const String kuwaitPrayerMethod = 'Kuwait';
const String qatarPrayerMethod = 'Qatar';
const String muisPrayerMethod = 'MUIS (Singapore)';
const String jakimPrayerMethod = 'JAKIM (Malaysia)';
const String kemenagPrayerMethod = 'KEMENAG (Indonesia)';
const String isnaPrayerMethod = 'North America (ISNA)';
const String mwlPrayerMethod = 'Muslim World League';
const String moroccoPrayerMethod = 'Morocco';
const String tehranPrayerMethod = 'Tehran';

const String hanafiMadhab = 'Hanafi';
const String shafiiMadhab = 'Shafii';
const String malikiMadhab = 'Maliki';
const String hanbaliMadhab = 'Hanbali';
const String jafariMadhab = 'Jafari';

const List<String> selectablePrayerMethods = <String>[
  diyanetPrayerMethod,
  egyptianPrayerMethod,
  karachiPrayerMethod,
  ummAlQuraPrayerMethod,
  dubaiPrayerMethod,
  kuwaitPrayerMethod,
  qatarPrayerMethod,
  muisPrayerMethod,
  jakimPrayerMethod,
  kemenagPrayerMethod,
  isnaPrayerMethod,
  mwlPrayerMethod,
  moroccoPrayerMethod,
  tehranPrayerMethod,
];

const List<String> selectableMadhabs = <String>[
  hanafiMadhab,
  shafiiMadhab,
  malikiMadhab,
  hanbaliMadhab,
  jafariMadhab,
];

const PrayerCalculationProfile _diyanetProfile = PrayerCalculationProfile(
  calculationMethod: diyanetPrayerMethod,
  madhab: hanafiMadhab,
  sourceName: 'Diyanet Isleri Baskanligi',
  sourceUrl: 'https://namazvakitleri.diyanet.gov.tr',
);

const PrayerCalculationProfile _egyptianProfile = PrayerCalculationProfile(
  calculationMethod: egyptianPrayerMethod,
  madhab: shafiiMadhab,
  sourceName: 'Dar al-Ifta al-Misriyyah',
  sourceUrl: 'https://www.dar-alifta.org',
);

const PrayerCalculationProfile _karachiProfile = PrayerCalculationProfile(
  calculationMethod: karachiPrayerMethod,
  madhab: hanafiMadhab,
  sourceName: 'University of Islamic Sciences, Karachi',
  sourceUrl: 'https://www.uis.edu.pk',
);

const PrayerCalculationProfile _ummAlQuraProfile = PrayerCalculationProfile(
  calculationMethod: ummAlQuraPrayerMethod,
  madhab: hanbaliMadhab,
  sourceName: 'Umm al-Qura / Saudi official profile',
  sourceUrl: 'https://quran.gov.sa',
);

const PrayerCalculationProfile _dubaiProfile = PrayerCalculationProfile(
  calculationMethod: dubaiPrayerMethod,
  madhab: hanbaliMadhab,
  sourceName: 'UAE Awqaf',
  sourceUrl: 'https://www.awqaf.gov.ae',
);

const PrayerCalculationProfile _kuwaitProfile = PrayerCalculationProfile(
  calculationMethod: kuwaitPrayerMethod,
  madhab: hanbaliMadhab,
  sourceName: 'Kuwait Ministry of Awqaf',
  sourceUrl: 'https://www.islam.gov.kw',
);

const PrayerCalculationProfile _qatarProfile = PrayerCalculationProfile(
  calculationMethod: qatarPrayerMethod,
  madhab: hanbaliMadhab,
  sourceName: 'Qatar Ministry of Awqaf',
  sourceUrl: 'https://www.awqaf.gov.qa',
);

const PrayerCalculationProfile _muisProfile = PrayerCalculationProfile(
  calculationMethod: muisPrayerMethod,
  madhab: shafiiMadhab,
  sourceName: 'Majlis Ugama Islam Singapura',
  sourceUrl: 'https://www.muis.gov.sg',
);

const PrayerCalculationProfile _jakimProfile = PrayerCalculationProfile(
  calculationMethod: jakimPrayerMethod,
  madhab: shafiiMadhab,
  sourceName: 'JAKIM e-Solat',
  sourceUrl: 'https://www.islam.gov.my/ms/e-solat',
);

const PrayerCalculationProfile _kemenagProfile = PrayerCalculationProfile(
  calculationMethod: kemenagPrayerMethod,
  madhab: shafiiMadhab,
  sourceName: 'Kementerian Agama Republik Indonesia',
  sourceUrl: 'https://bimasislam.kemenag.go.id/jadwalshalat',
);

const PrayerCalculationProfile _isnaProfile = PrayerCalculationProfile(
  calculationMethod: isnaPrayerMethod,
  madhab: shafiiMadhab,
  sourceName: 'Islamic Society of North America',
  sourceUrl: 'https://www.isna.net',
);

const PrayerCalculationProfile _mwlShafiiProfile = PrayerCalculationProfile(
  calculationMethod: mwlPrayerMethod,
  madhab: shafiiMadhab,
  sourceName: 'Muslim World League',
  sourceUrl: 'https://www.mwl.net/en',
);

const PrayerCalculationProfile _mwlHanafiProfile = PrayerCalculationProfile(
  calculationMethod: mwlPrayerMethod,
  madhab: hanafiMadhab,
  sourceName: 'Muslim World League',
  sourceUrl: 'https://www.mwl.net/en',
);

const PrayerCalculationProfile _moroccoProfile = PrayerCalculationProfile(
  calculationMethod: moroccoPrayerMethod,
  madhab: malikiMadhab,
  sourceName: 'Morocco Ministry of Awqaf',
  sourceUrl: 'https://www.habous.gov.ma',
);

const PrayerCalculationProfile _tehranProfile = PrayerCalculationProfile(
  calculationMethod: tehranPrayerMethod,
  madhab: jafariMadhab,
  sourceName: 'Institute of Geophysics, University of Tehran',
  sourceUrl: 'https://www.ut.ac.ir/en',
);

const PrayerCalculationProfile _customProfile = PrayerCalculationProfile(
  calculationMethod: customPrayerMethod,
  madhab: hanafiMadhab,
  sourceName: 'Manual custom angles',
  sourceUrl: '',
);

const Map<String, PrayerCalculationProfile> _timezoneProfileFallbacks =
    <String, PrayerCalculationProfile>{
      'Africa/Algiers': _moroccoProfile,
      'Africa/Cairo': _egyptianProfile,
      'Africa/Casablanca': _moroccoProfile,
      'Africa/Tunis': _moroccoProfile,
      'America/Adak': _isnaProfile,
      'America/Anchorage': _isnaProfile,
      'America/Atikokan': _isnaProfile,
      'America/Blanc-Sablon': _isnaProfile,
      'America/Boise': _isnaProfile,
      'America/Cambridge_Bay': _isnaProfile,
      'America/Chicago': _isnaProfile,
      'America/Coral_Harbour': _isnaProfile,
      'America/Creston': _isnaProfile,
      'America/Dawson': _isnaProfile,
      'America/Dawson_Creek': _isnaProfile,
      'America/Denver': _isnaProfile,
      'America/Detroit': _isnaProfile,
      'America/Edmonton': _isnaProfile,
      'America/Fort_Nelson': _isnaProfile,
      'America/Glace_Bay': _isnaProfile,
      'America/Goose_Bay': _isnaProfile,
      'America/Halifax': _isnaProfile,
      'America/Indiana/Indianapolis': _isnaProfile,
      'America/Indiana/Knox': _isnaProfile,
      'America/Indiana/Marengo': _isnaProfile,
      'America/Indiana/Petersburg': _isnaProfile,
      'America/Indiana/Tell_City': _isnaProfile,
      'America/Indiana/Vevay': _isnaProfile,
      'America/Indiana/Vincennes': _isnaProfile,
      'America/Indiana/Winamac': _isnaProfile,
      'America/Inuvik': _isnaProfile,
      'America/Iqaluit': _isnaProfile,
      'America/Juneau': _isnaProfile,
      'America/Kentucky/Louisville': _isnaProfile,
      'America/Kentucky/Monticello': _isnaProfile,
      'America/Los_Angeles': _isnaProfile,
      'America/Menominee': _isnaProfile,
      'America/Metlakatla': _isnaProfile,
      'America/Moncton': _isnaProfile,
      'America/New_York': _isnaProfile,
      'America/Nome': _isnaProfile,
      'America/North_Dakota/Beulah': _isnaProfile,
      'America/North_Dakota/Center': _isnaProfile,
      'America/North_Dakota/New_Salem': _isnaProfile,
      'America/Phoenix': _isnaProfile,
      'America/Puerto_Rico': _isnaProfile,
      'America/Rankin_Inlet': _isnaProfile,
      'America/Regina': _isnaProfile,
      'America/Resolute': _isnaProfile,
      'America/Sitka': _isnaProfile,
      'America/St_Johns': _isnaProfile,
      'America/Swift_Current': _isnaProfile,
      'America/Toronto': _isnaProfile,
      'America/Vancouver': _isnaProfile,
      'America/Whitehorse': _isnaProfile,
      'America/Winnipeg': _isnaProfile,
      'America/Yakutat': _isnaProfile,
      'America/Yellowknife': _isnaProfile,
      'Asia/Dhaka': _karachiProfile,
      'Asia/Dubai': _dubaiProfile,
      'Asia/Jakarta': _kemenagProfile,
      'Asia/Jayapura': _kemenagProfile,
      'Asia/Kabul': _karachiProfile,
      'Asia/Karachi': _karachiProfile,
      'Asia/Kuala_Lumpur': _jakimProfile,
      'Asia/Kuching': _jakimProfile,
      'Asia/Kuwait': _kuwaitProfile,
      'Asia/Makassar': _kemenagProfile,
      'Asia/Pontianak': _kemenagProfile,
      'Asia/Qatar': _qatarProfile,
      'Asia/Riyadh': _ummAlQuraProfile,
      'Asia/Singapore': _muisProfile,
      'Asia/Tehran': _tehranProfile,
      'Europe/Istanbul': _diyanetProfile,
      'Pacific/Honolulu': _isnaProfile,
    };

String normalizeCalculationMethod(String method) {
  final normalized = method.trim();
  switch (normalized) {
    case 'Turkey':
    case diyanetPrayerMethod:
      return diyanetPrayerMethod;
    case egyptianPrayerMethod:
      return egyptianPrayerMethod;
    case 'ISNA':
    case isnaPrayerMethod:
      return isnaPrayerMethod;
    case 'MWL':
    case mwlPrayerMethod:
      return mwlPrayerMethod;
    case karachiPrayerMethod:
      return karachiPrayerMethod;
    case 'Umm Al-Qura':
    case ummAlQuraPrayerMethod:
      return ummAlQuraPrayerMethod;
    case dubaiPrayerMethod:
      return dubaiPrayerMethod;
    case kuwaitPrayerMethod:
      return kuwaitPrayerMethod;
    case qatarPrayerMethod:
      return qatarPrayerMethod;
    case 'Singapore':
    case muisPrayerMethod:
      return muisPrayerMethod;
    case jakimPrayerMethod:
      return jakimPrayerMethod;
    case kemenagPrayerMethod:
      return kemenagPrayerMethod;
    case 'North America':
      return isnaPrayerMethod;
    case moroccoPrayerMethod:
      return moroccoPrayerMethod;
    case tehranPrayerMethod:
      return tehranPrayerMethod;
    case customPrayerMethod:
      return customPrayerMethod;
    default:
      return mwlPrayerMethod;
  }
}

String normalizeMadhab(String madhab) {
  final normalized = madhab.trim();
  switch (normalized) {
    case 'Shafi':
    case "Shafi'i":
    case shafiiMadhab:
      return shafiiMadhab;
    case malikiMadhab:
      return malikiMadhab;
    case hanbaliMadhab:
      return hanbaliMadhab;
    case jafariMadhab:
      return jafariMadhab;
    case hanafiMadhab:
    default:
      return hanafiMadhab;
  }
}

String displayMadhabLabel(String madhab) {
  switch (normalizeMadhab(madhab)) {
    case shafiiMadhab:
      return "Shafi'i";
    case jafariMadhab:
      return "Ja'fari";
    default:
      return normalizeMadhab(madhab);
  }
}

bool hasOfficialPrayerAuthority(PrayerCalculationProfile profile) {
  return normalizeCalculationMethod(profile.calculationMethod) !=
          customPrayerMethod &&
      profile.sourceUrl.trim().isNotEmpty;
}

PrayerCalculationProfile profileForMethod(String method, {String? madhab}) {
  final normalizedMethod = normalizeCalculationMethod(method);
  final normalizedMadhab = madhab == null ? null : normalizeMadhab(madhab);
  switch (normalizedMethod) {
    case diyanetPrayerMethod:
      return _diyanetProfile;
    case egyptianPrayerMethod:
      return _egyptianProfile;
    case karachiPrayerMethod:
      return _karachiProfile;
    case ummAlQuraPrayerMethod:
      return normalizedMadhab == shafiiMadhab
          ? const PrayerCalculationProfile(
              calculationMethod: ummAlQuraPrayerMethod,
              madhab: shafiiMadhab,
              sourceName: 'Umm al-Qura / Saudi official profile',
              sourceUrl: 'https://quran.gov.sa',
            )
          : _ummAlQuraProfile;
    case dubaiPrayerMethod:
      return normalizedMadhab == shafiiMadhab
          ? const PrayerCalculationProfile(
              calculationMethod: dubaiPrayerMethod,
              madhab: shafiiMadhab,
              sourceName: 'UAE Awqaf',
              sourceUrl: 'https://www.awqaf.gov.ae',
            )
          : _dubaiProfile;
    case kuwaitPrayerMethod:
      return normalizedMadhab == shafiiMadhab
          ? const PrayerCalculationProfile(
              calculationMethod: kuwaitPrayerMethod,
              madhab: shafiiMadhab,
              sourceName: 'Kuwait Ministry of Awqaf',
              sourceUrl: 'https://www.islam.gov.kw',
            )
          : _kuwaitProfile;
    case qatarPrayerMethod:
      return normalizedMadhab == shafiiMadhab
          ? const PrayerCalculationProfile(
              calculationMethod: qatarPrayerMethod,
              madhab: shafiiMadhab,
              sourceName: 'Qatar Ministry of Awqaf',
              sourceUrl: 'https://www.awqaf.gov.qa',
            )
          : _qatarProfile;
    case muisPrayerMethod:
      return _muisProfile;
    case jakimPrayerMethod:
      return _jakimProfile;
    case kemenagPrayerMethod:
      return _kemenagProfile;
    case isnaPrayerMethod:
      return normalizedMadhab == hanafiMadhab
          ? const PrayerCalculationProfile(
              calculationMethod: isnaPrayerMethod,
              madhab: hanafiMadhab,
              sourceName: 'Islamic Society of North America',
              sourceUrl: 'https://www.isna.net',
            )
          : _isnaProfile;
    case mwlPrayerMethod:
      return normalizedMadhab == hanafiMadhab
          ? _mwlHanafiProfile
          : _mwlShafiiProfile;
    case moroccoPrayerMethod:
      return _moroccoProfile;
    case tehranPrayerMethod:
      return _tehranProfile;
    case customPrayerMethod:
      return PrayerCalculationProfile(
        calculationMethod: customPrayerMethod,
        madhab: normalizedMadhab ?? _customProfile.madhab,
        sourceName: _customProfile.sourceName,
        sourceUrl: _customProfile.sourceUrl,
      );
    default:
      return _mwlShafiiProfile;
  }
}

PrayerCalculationProfile resolvePrayerProfile({
  String? countryCode,
  String? timezone,
}) {
  final normalizedCountryCode = countryCode?.trim().toUpperCase();
  switch (normalizedCountryCode) {
    case 'TR':
      return _diyanetProfile;
    case 'SA':
      return _ummAlQuraProfile;
    case 'EG':
      return _egyptianProfile;
    case 'AE':
      return _dubaiProfile;
    case 'KW':
      return _kuwaitProfile;
    case 'QA':
      return _qatarProfile;
    case 'MY':
      return _jakimProfile;
    case 'ID':
      return _kemenagProfile;
    case 'SG':
      return _muisProfile;
    case 'MA':
    case 'DZ':
    case 'TN':
      return _moroccoProfile;
    case 'PK':
    case 'BD':
    case 'AF':
      return _karachiProfile;
    case 'IR':
      return _tehranProfile;
    case 'US':
    case 'CA':
      return _isnaProfile;
    case 'BA':
    case 'UZ':
    case 'AZ':
      return _mwlHanafiProfile;
    default:
      break;
  }

  final normalizedTimezone = timezone?.trim();
  if (normalizedTimezone == null || normalizedTimezone.isEmpty) {
    return _mwlShafiiProfile;
  }

  return _timezoneProfileFallbacks[normalizedTimezone] ?? _mwlShafiiProfile;
}

CalculationParameters buildCalculationParameters(
  String method, {
  double? fajrAngle,
  double? ishaAngle,
}) {
  final normalizedMethod = normalizeCalculationMethod(method);
  switch (normalizedMethod) {
    case customPrayerMethod:
      return CalculationParameters(
        fajrAngle: fajrAngle ?? 18.0,
        ishaAngle: ishaAngle ?? 17.0,
      );
    case diyanetPrayerMethod:
      return CalculationMethod.turkey.getParameters();
    case egyptianPrayerMethod:
      return CalculationMethod.egyptian.getParameters();
    case karachiPrayerMethod:
      return CalculationMethod.karachi.getParameters();
    case ummAlQuraPrayerMethod:
      return CalculationMethod.umm_al_qura.getParameters();
    case dubaiPrayerMethod:
      return CalculationMethod.dubai.getParameters();
    case kuwaitPrayerMethod:
      return CalculationMethod.kuwait.getParameters();
    case qatarPrayerMethod:
      return CalculationMethod.qatar.getParameters();
    case muisPrayerMethod:
    case jakimPrayerMethod:
    case kemenagPrayerMethod:
      return CalculationMethod.singapore.getParameters();
    case isnaPrayerMethod:
      return CalculationMethod.north_america.getParameters();
    case moroccoPrayerMethod:
    case mwlPrayerMethod:
      return CalculationMethod.muslim_world_league.getParameters();
    case tehranPrayerMethod:
      return CalculationMethod.tehran.getParameters();
    default:
      return CalculationMethod.muslim_world_league.getParameters();
  }
}

void applyAutomaticHighLatitudeRule(
  CalculationParameters params,
  double latitude,
) {
  if (latitude.abs() > 48.0) {
    params.highLatitudeRule = HighLatitudeRule.twilight_angle;
  }
}

Madhab resolveAdhanMadhab(String madhab) {
  switch (normalizeMadhab(madhab)) {
    case hanafiMadhab:
      return Madhab.hanafi;
    case shafiiMadhab:
    case malikiMadhab:
    case hanbaliMadhab:
    case jafariMadhab:
    default:
      return Madhab.shafi;
  }
}
