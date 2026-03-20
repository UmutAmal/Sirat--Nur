import 'package:flutter/material.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});
  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  int _selectedDay = DateTime.now().day;

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final daysInMonth = DateUtils.getDaysInMonth(now.year, now.month);

    return Scaffold(
      appBar: AppBar(title: const Text('Hijri Calendar')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hijri date header
            AnimatedPremiumCard(
              child: Column(
                children: [
                  const Text('Hijri Date', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
                  const SizedBox(height: 8),
                  Text('Ramadan 1447 AH', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.emerald)),
                  const SizedBox(height: 4),
                  Text('${now.day} ${_monthName(now.month)} ${now.year}', style: TextStyle(fontSize: 13,
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5))),
                ],
              ),
            ),
            // Calendar grid
            const SizedBox(height: 8),
            Text('${_monthName(now.month)} ${now.year}',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900)),
            const SizedBox(height: 12),
            PremiumCard(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  // Day headers
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
                      .map((d) => SizedBox(
                        width: 36,
                        child: Text(d, textAlign: TextAlign.center, style: TextStyle(
                          fontSize: 11, fontWeight: FontWeight.w800,
                          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.4))),
                      )).toList(),
                  ),
                  const SizedBox(height: 8),
                  // Day numbers
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 7),
                    itemCount: daysInMonth,
                    itemBuilder: (context, i) {
                      final day = i + 1;
                      final isToday = day == now.day;
                      final isSelected = day == _selectedDay;
                      return GestureDetector(
                        onTap: () => setState(() => _selectedDay = day),
                        child: Container(
                          margin: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: isSelected ? AppColors.emerald : (isToday ? AppColors.emeraldSurface : null),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text('$day', style: TextStyle(
                              fontWeight: isToday || isSelected ? FontWeight.w900 : FontWeight.w600,
                              color: isSelected ? Colors.white : (isToday ? AppColors.emerald : null),
                              fontSize: 13,
                            )),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            // Islamic events
            const SizedBox(height: 16),
            Text('Important Dates', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900)),
            const SizedBox(height: 12),
            ..._importantDates.asMap().entries.map((e) => AnimatedPremiumCard(
              animationDelay: e.key * 80,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.emeraldSurface,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.event_rounded, color: AppColors.emerald, size: 20),
                  ),
                  const SizedBox(width: 12),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(e.value.name, style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 14)),
                      Text(e.value.hijriDate, style: TextStyle(fontSize: 12,
                        color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5))),
                    ],
                  )),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  String _monthName(int month) {
    const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
    return months[month - 1];
  }

  static const _importantDates = [
    _IslamicDate('Ramadan', '1 Ramadan'),
    _IslamicDate('Laylat al-Qadr', '27 Ramadan'),
    _IslamicDate('Eid al-Fitr', '1 Shawwal'),
    _IslamicDate('Day of Arafah', '9 Dhul Hijjah'),
    _IslamicDate('Eid al-Adha', '10 Dhul Hijjah'),
    _IslamicDate('Islamic New Year', '1 Muharram'),
    _IslamicDate('Mawlid an-Nabi', '12 Rabi al-Awwal'),
    _IslamicDate("Mi'raj", '27 Rajab'),
  ];
}

class _IslamicDate {
  final String name;
  final String hijriDate;
  const _IslamicDate(this.name, this.hijriDate);
}
