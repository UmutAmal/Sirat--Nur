import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

List<MapEntry<String, String>> buildImportantDates(AppLocalizations l10n) {
  return [
    MapEntry(l10n.ramadan, l10n.specialDayDateRamadanStart),
    MapEntry(l10n.laylatAlQadr, l10n.specialDayDateLaylatAlQadr),
    MapEntry(l10n.eidAlFitr, l10n.specialDayDateEidAlFitr),
    MapEntry(l10n.eidAlAdha, l10n.specialDayDateEidAlAdha),
    MapEntry(l10n.islamicNewYear, l10n.specialDayDateIslamicNewYear),
    MapEntry(l10n.mawlidAnNabi, l10n.specialDayDateMawlidAnNabi),
  ];
}

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});
  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  DateTime _currentMonth = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    1,
  );
  DateTime _selectedDate = DateTime.now();
  String? _activeHijriLocale;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final localeCode = Localizations.localeOf(
      context,
    ).languageCode.toLowerCase();
    if (_activeHijriLocale == localeCode) return;

    try {
      HijriCalendar.setLocal(localeCode);
      _activeHijriLocale = localeCode;
    } catch (_) {
      debugPrint('Hijri calendar locale fallback applied');
      HijriCalendar.setLocal('en');
      _activeHijriLocale = 'en';
    }
  }

  int get _daysInMonth =>
      DateUtils.getDaysInMonth(_currentMonth.year, _currentMonth.month);
  int get _firstDayOffset => _currentMonth.weekday - 1; // 0 = Monday

  void _changeMonth(int increment) {
    setState(() {
      _currentMonth = DateTime(
        _currentMonth.year,
        _currentMonth.month + increment,
        1,
      );
      // Clamp selected date to new month's valid days
      final daysInNew = DateUtils.getDaysInMonth(
        _currentMonth.year,
        _currentMonth.month,
      );
      final newDay = _selectedDate.day > daysInNew
          ? daysInNew
          : _selectedDate.day;
      _selectedDate = DateTime(_currentMonth.year, _currentMonth.month, newDay);
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final localeTag = Localizations.localeOf(context).toLanguageTag();

    final selectedHijri = HijriCalendar.fromDate(_selectedDate);
    final today = DateTime.now();
    final importantDates = buildImportantDates(
      l10n,
    ).map((event) => _IslamicDate(event.key, event.value, '')).toList();
    final weekdayLabels = _weekdayLabels(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          l10n.calendar,
          style: const TextStyle(fontWeight: FontWeight.w800),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: isDark
                ? [AppColors.darkBg, AppColors.darkSurface]
                : [AppColors.emeraldSurface, Colors.white],
            stops: const [0.0, 0.4],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Header (Selected Date Hijri + Gregorian)
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    gradient: AppColors.emeraldGradient,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.emeraldDeep.withValues(alpha: 0.3),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      // Decorative background icon
                      Positioned(
                        right: -20,
                        top: -20,
                        child: Icon(
                          Icons.nightlight_round,
                          size: 100,
                          color: Colors.white.withValues(alpha: 0.1),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.hijriCalendar.toUpperCase(),
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 11,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 2,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '${selectedHijri.hDay} ${selectedHijri.longMonthName} ${selectedHijri.hYear}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w900,
                              height: 1.1,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white.withValues(alpha: 0.2),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  DateFormat.yMMMMd(
                                    localeTag,
                                  ).format(_selectedDate),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Calendar Controls
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${_monthName(context, _currentMonth.month)} ${_currentMonth.year}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () => _changeMonth(-1),
                            icon: const Icon(Icons.chevron_left_rounded),
                            style: IconButton.styleFrom(
                              backgroundColor: isDark
                                  ? Colors.white10
                                  : Colors.black12,
                            ),
                          ),
                          const SizedBox(width: 8),
                          IconButton(
                            onPressed: () => _changeMonth(1),
                            icon: const Icon(Icons.chevron_right_rounded),
                            style: IconButton.styleFrom(
                              backgroundColor: isDark
                                  ? Colors.white10
                                  : Colors.black12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // Calendar Grid Area
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: isDark ? AppColors.darkSurface : Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: Colors.grey.withValues(alpha: 0.1),
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.05),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // Weekdays
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: weekdayLabels
                            .map(
                              (d) => SizedBox(
                                width: 40,
                                child: Text(
                                  d,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w800,
                                    color: d == weekdayLabels[4]
                                        ? AppColors.emerald
                                        : Theme.of(context)
                                              .colorScheme
                                              .onSurface
                                              .withValues(alpha: 0.4),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      const SizedBox(height: 12),

                      // Days Grid
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 7,
                              mainAxisSpacing: 8,
                              crossAxisSpacing: 8,
                              childAspectRatio: 0.85,
                            ),
                        // total cells = offset + days in month
                        itemCount: _firstDayOffset + _daysInMonth,
                        itemBuilder: (context, index) {
                          if (index < _firstDayOffset) {
                            return const SizedBox.shrink(); // empty cells
                          }
                          final day = index - _firstDayOffset + 1;
                          final date = DateTime(
                            _currentMonth.year,
                            _currentMonth.month,
                            day,
                          );
                          final hijriDate = HijriCalendar.fromDate(date);

                          final isToday =
                              date.day == today.day &&
                              date.month == today.month &&
                              date.year == today.year;
                          final isSelected =
                              date.day == _selectedDate.day &&
                              date.month == _selectedDate.month &&
                              date.year == _selectedDate.year;

                          // Determine special day status
                          final isFr = date.weekday == 5; // Friday
                          final isRamadan = hijriDate.hMonth == 9;

                          Color bgColor = Colors.transparent;
                          Color textColor = Theme.of(
                            context,
                          ).colorScheme.onSurface;
                          Color hijriColor = Colors.grey;

                          if (isSelected) {
                            bgColor = AppColors.emerald;
                            textColor = Colors.white;
                            hijriColor = Colors.white70;
                          } else if (isToday) {
                            bgColor = AppColors.emeraldSurface;
                            textColor = AppColors.emerald;
                            hijriColor = AppColors.emerald.withValues(
                              alpha: 0.6,
                            );
                          } else if (isRamadan) {
                            bgColor = Colors.amber.withValues(alpha: 0.1);
                            hijriColor = Colors.amber.shade700;
                          }

                          return GestureDetector(
                            onTap: () => setState(() => _selectedDate = date),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              decoration: BoxDecoration(
                                color: bgColor,
                                borderRadius: BorderRadius.circular(14),
                                border: isToday && !isSelected
                                    ? Border.all(
                                        color: AppColors.emerald.withValues(
                                          alpha: 0.3,
                                        ),
                                        width: 1.5,
                                      )
                                    : null,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '$day',
                                    style: TextStyle(
                                      fontWeight: isToday || isSelected
                                          ? FontWeight.w900
                                          : FontWeight.w700,
                                      color: (isFr && !isSelected && !isToday)
                                          ? AppColors.emerald
                                          : textColor,
                                      fontSize: 15,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    '${hijriDate.hDay}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: hijriColor,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // Special Days Section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    l10n.specialDays,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                // Static list of events (simulated upcoming)
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  itemCount: importantDates.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final event = importantDates[index];
                    return Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: isDark ? AppColors.darkSurface : Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.grey.withValues(alpha: 0.1),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.02),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: AppColors.emeraldSurface,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Icon(
                              Icons.star_rounded,
                              color: AppColors.emerald,
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  event.name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  event.hijriDate,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface
                                        .withValues(alpha: 0.5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.chevron_right_rounded,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ],
                      ),
                    );
                  },
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _monthName(BuildContext context, int month) {
    final localeTag = Localizations.localeOf(context).toLanguageTag();
    return DateFormat.MMMM(localeTag).format(DateTime(2000, month, 1));
  }

  List<String> _weekdayLabels(BuildContext context) {
    final localeTag = Localizations.localeOf(context).toLanguageTag();
    final monday = DateTime(2024, 1, 1); // Monday
    return List<String>.generate(
      7,
      (index) =>
          DateFormat.E(localeTag).format(monday.add(Duration(days: index))),
    );
  }
}

class _IslamicDate {
  final String name;
  final String hijriDate;
  final String tag;
  const _IslamicDate(this.name, this.hijriDate, this.tag);
}
