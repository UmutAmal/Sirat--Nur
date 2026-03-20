import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:sirat_i_nur/core/services/prayer_calendar_service.dart';
import 'package:sirat_i_nur/core/utils/tr_en.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/presentation/blocs/settings_provider.dart';


/// Helper function to get Hijri month name
String _getHijriMonthName(int month, bool isTr) {
  const monthsEn = [
    'Muharram', 'Safar', 'Rabi al-Awwal', 'Rabi al-Thani',
    'Jumada al-Awwal', 'Jumada al-Thani', 'Rajab', 'Sha\'ban',
    'Ramadan', 'Shawwal', 'Dhu al-Qidah', 'Dhu al-Hijjah'
  ];
  const monthsTr = [
    'Muharrem', 'Safer', 'Rebiülevvel', 'Rebiülahir',
    'Cemaziyelevvel', 'Cemaziyelahir', 'Recep', 'Şaban',
    'Ramazan', 'Şevval', 'Zilkade', 'Zilhicce'
  ];
  return isTr ? monthsTr[month - 1] : monthsEn[month - 1];
}

class CalendarPage extends ConsumerStatefulWidget {
  const CalendarPage({super.key});

  @override
  ConsumerState<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends ConsumerState<CalendarPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  String _hijriLocale = 'en';
  Map<String, dynamic>? _selectedDayPrayerTimes;
  bool _isLoadingPrayerTimes = false;

  // Cached location settings
  double _latitude = 41.0082; // Default: Istanbul
  double _longitude = 28.9784;
  String _method = 'Turkey';
  String _madhab = 'Hanafi';

  static const Set<String> _supportedHijriLocales = {
    'en',
    'tr',
    'ar',
    'ur',
  };

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
    _loadSettings();
    _loadPrayerTimesForDay(_selectedDay!);
  }

  Future<void> _loadSettings() async {
    final settings = ref.read(settingsProvider);
    setState(() {
      _latitude = settings.latitude ?? 41.0082;
      _longitude = settings.longitude ?? 28.9784;
      _method = settings.calculationMethod;
      _madhab = settings.madhab;
    });
  }

  Future<void> _loadPrayerTimesForDay(DateTime day) async {
    setState(() {
      _isLoadingPrayerTimes = true;
    });

    try {
      // Try to get from cache first
      final cached = await PrayerCalendarService.getCachedPrayerTimeForDate(day);
      
      if (cached != null) {
        setState(() {
          _selectedDayPrayerTimes = {
            'fajr': cached.fajr,
            'sunrise': cached.sunrise,
            'dhuhr': cached.dhuhr,
            'asr': cached.asr,
            'maghrib': cached.maghrib,
            'isha': cached.isha,
          };
        });
      } else {
        // Calculate on the fly (offline!)
        final times = PrayerCalendarService.calculatePrayerTimes(
          latitude: _latitude,
          longitude: _longitude,
          date: day,
          method: _method,
          madhab: _madhab,
        );
        
        setState(() {
          _selectedDayPrayerTimes = {
            'fajr': times.fajr,
            'sunrise': times.sunrise,
            'dhuhr': times.dhuhr,
            'asr': times.asr,
            'maghrib': times.maghrib,
            'isha': times.isha,
          };
        });
      }
    } catch (e) {
      // Error loading prayer times
    }

    setState(() {
      _isLoadingPrayerTimes = false;
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final langCode = Localizations.localeOf(context).languageCode;
    final resolvedLocale = _supportedHijriLocales.contains(langCode) ? langCode : 'en';
    if (_hijriLocale != resolvedLocale) {
      HijriCalendar.setLocal(resolvedLocale);
      _hijriLocale = resolvedLocale;
    }
  }

  @override
  Widget build(BuildContext context) {
    final hijriDate = HijriCalendar.fromDate(_selectedDay ?? _focusedDay);
    final isTr = isTrLocale(context);
    
    // Check Islamic special days
    final bool isRamadan = hijriDate.hMonth == 9;
    final bool isBerat = hijriDate.hMonth == 8 && hijriDate.hDay == 15;
    final bool isEidAlFitr = hijriDate.hMonth == 10 && hijriDate.hDay <= 3;
    final bool isEidAlAdha = hijriDate.hMonth == 12 && (hijriDate.hDay >= 10 && hijriDate.hDay <= 13);
    final bool isLaylatAlQadr = hijriDate.hMonth == 9 && hijriDate.hDay == 27;
    final bool isAshura = hijriDate.hMonth == 1 && hijriDate.hDay == 10;
    final bool isMawlid = hijriDate.hMonth == 3 && hijriDate.hDay == 12;
    final bool isHijriNewYear = hijriDate.hMonth == 1 && hijriDate.hDay == 1;
    final bool isThreeMonthsStart = hijriDate.hMonth == 7 && hijriDate.hDay == 1;
    final bool isArafat = hijriDate.hMonth == 12 && hijriDate.hDay == 9;

    final List<Map<String, String>> specialDays = [];

    if (isRamadan) specialDays.add({'en': 'Ramadan', 'tr': 'Ramazan'});
    if (isBerat) specialDays.add({'en': 'Laylat al-Barat', 'tr': 'Berat Kandili'});
    if (isEidAlFitr) specialDays.add({'en': 'Eid al-Fitr', 'tr': 'Ramazan Bayramı'});
    if (isEidAlAdha) specialDays.add({'en': 'Eid al-Adha', 'tr': 'Kurban Bayramı'});
    if (isLaylatAlQadr) specialDays.add({'en': 'Laylat al-Qadr', 'tr': 'Kadir Gecesi'});
    if (isAshura) specialDays.add({'en': 'Ashura', 'tr': 'Aşure Günü'});
    if (isMawlid) specialDays.add({'en': 'Mawlid', 'tr': 'Mevlid Kandili'});
    if (isHijriNewYear) specialDays.add({'en': 'Hijri New Year', 'tr': 'Hicri Yılbaşı'});
    if (isThreeMonthsStart) specialDays.add({'en': 'Three Months Start', 'tr': 'Üç Aylar Başlangıcı'});
    if (isArafat) specialDays.add({'en': 'Day of Arafat', 'tr': 'Arafat Günü'});

    return Scaffold(
      appBar: AppBar(
        title: Text(isTr ? 'İslami Takvim' : 'Islamic Calendar'),
        actions: [
          IconButton(
            icon: const Icon(Icons.cloud_download),
            tooltip: isTr ? 'Offline verileri kaydet' : 'Save offline data',
            onPressed: () async {
              final isLoading = isTr ? 'Kaydediliyor...' : 'Saving...';
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(isLoading)),
              );
              
              await PrayerCalendarService.cachePrayerTimes(
                latitude: _latitude,
                longitude: _longitude,
                method: _method,
                madhab: _madhab,
              );
              
              if (!context.mounted) return;
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(isTr ? '10 yıllık veri kaydedildi!' : '10 years saved!'),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Calendar
          TableCalendar(
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2035, 12, 31),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
              _loadPrayerTimesForDay(selectedDay);
            },
            onFormatChanged: (format) {
              setState(() {
                _calendarFormat = format;
              });
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay;
            },
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.5),
                shape: BoxShape.circle,
              ),
              selectedDecoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                shape: BoxShape.circle,
              ),
              markerDecoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiary,
                shape: BoxShape.circle,
              ),
            ),
            headerStyle: HeaderStyle(
              formatButtonVisible: true,
              titleCentered: true,
              formatButtonShowsNext: false,
              formatButtonDecoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).colorScheme.primary),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            calendarBuilders: CalendarBuilders(
              markerBuilder: (context, date, events) {
                final h = HijriCalendar.fromDate(date);
                
                // Mark special Islamic days
                if (h.hMonth == 9 || h.hMonth == 10 || h.hMonth == 12 || 
                    h.hMonth == 1 || h.hMonth == 3 || h.hMonth == 8) {
                  return Positioned(
                    bottom: 1,
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: _getSpecialDayColor(h),
                        shape: BoxShape.circle,
                      ),
                    ),
                  );
                }
                return null;
              },
            ),
          ),
          
          const Divider(),
          
          // Selected Day Info
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Hijri Date
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.calendar_today, size: 20),
                              const SizedBox(width: 8),
                              Text(
                                isTr ? 'Hicri Tarih' : 'Hijri Date',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '${hijriDate.hDay} ${_getHijriMonthName(hijriDate.hMonth, isTr)} ${hijriDate.hYear}',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          if (specialDays.isNotEmpty) ...[
                            const SizedBox(height: 8),
                            Wrap(
                              spacing: 8,
                              children: specialDays.map((day) => Chip(
                                label: Text(day[isTr ? 'tr' : 'en']!),
                                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                              )).toList(),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // Prayer Times for Selected Day
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.access_time, size: 20),
                              const SizedBox(width: 8),
                              Text(
                                isTr ? 'Namaz Vakitleri' : 'Prayer Times',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.green.withValues(alpha: 0.2),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.cloud_off, size: 14, color: Colors.green[700]),
                                    const SizedBox(width: 4),
                                    Text(
                                      'OFFLINE',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green[700],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          
                          if (_isLoadingPrayerTimes)
                            const Center(child: CircularProgressIndicator())
                          else if (_selectedDayPrayerTimes != null)
                            ..._buildPrayerTimeList()
                          else
                            Text(
                              isTr 
                                ? 'Vakitleri görmek için bir gün seçin'
                                : 'Select a day to see prayer times',
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: Theme.of(context).colorScheme.onSurfaceVariant,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildPrayerTimeList() {
    final isTr = isTrLocale(context);
    final times = _selectedDayPrayerTimes!;
    
    final prayerNames = isTr 
      ? ['Sabah', 'Güneş', 'Öğle', 'İkindi', 'Akşam', 'Yatsı']
      : ['Fajr', 'Sunrise', 'Dhuhr', 'Asr', 'Maghrib', 'Isha'];
    
    final prayerIcons = ['🌅', '☀️', '☀️', '🕯️', '🌇', '🌙'];
    
    final prayerKeys = ['fajr', 'sunrise', 'dhuhr', 'asr', 'maghrib', 'isha'];
    
    return List.generate(6, (index) {
      final time = times[prayerKeys[index]] as DateTime;
      final hour = time.hour.toString().padLeft(2, '0');
      final minute = time.minute.toString().padLeft(2, '0');
      
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Text(prayerIcons[index], style: const TextStyle(fontSize: 20)),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                prayerNames[index],
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            Text(
              '$hour:$minute',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    });
  }

  Color _getSpecialDayColor(HijriCalendar h) {
    if (h.hMonth == 9) return Colors.purple; // Ramadan
    if (h.hMonth == 10) return Colors.green; // Eid
    if (h.hMonth == 12) return Colors.orange; // Hajj
    if (h.hMonth == 1) return Colors.blue; // New Year
    if (h.hMonth == 3) return Colors.pink; // Mawlid
    return Colors.teal;
  }
}
