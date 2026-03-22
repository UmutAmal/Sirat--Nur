import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});
  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _controller = PageController();
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBg,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (p) => setState(() => _page = p),
                children: [
                  _buildPage(Icons.mosque_rounded, 'Sirat-i Nur', 'Your complete Islamic companion for prayer, Quran, and spiritual growth.'),
                  _buildPage(Icons.explore_rounded, 'Find Your Way', 'Qibla compass, prayer times, and mosque finder for any location worldwide.'),
                  _buildPage(Icons.auto_stories_rounded, 'Learn & Grow', 'Quran reading, hadith, education, and AI-powered Islamic assistant.'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: List.generate(3, (i) => Container(
                    width: _page == i ? 24 : 8, height: 8,
                    margin: const EdgeInsets.only(right: 6),
                    decoration: BoxDecoration(
                      color: _page == i ? AppColors.emeraldLight : Colors.white24,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ))),
                  ElevatedButton(
                    onPressed: () async {
                      if (_page < 2) {
                        _controller.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
                      } else {
                        final prefs = await SharedPreferences.getInstance();
                        await prefs.setBool('isFirstLaunch', false);
                        if (context.mounted) context.go('/');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.emeraldLight,
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                    ),
                    child: Text(_page < 2 ? 'Next' : 'Get Started',
                      style: const TextStyle(fontWeight: FontWeight.w900)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPage(IconData icon, String title, String desc) {
    return Padding(
      padding: const EdgeInsets.all(48),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: AppColors.emeraldLight.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 80, color: AppColors.emeraldLight),
          ),
          const SizedBox(height: 48),
          Text(title, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w900, color: Colors.white)),
          const SizedBox(height: 16),
          Text(desc, textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Colors.white60, height: 1.6)),
        ],
      ),
    );
  }
}
