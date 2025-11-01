import 'package:flutter/material.dart';
import 'package:bankpick/screens/home_tab.dart';
import 'package:bankpick/screens/my_card_tab.dart';
import 'package:bankpick/screens/statistics_tab.dart';
import 'package:bankpick/screens/setting_tab.dart';
import 'package:bankpick/util/baking_bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeTab(),
    MyCardTab(),
    StatisticsTab(),
    SettingTab(),
  ];

  void _onSwipeLeft() {
    if (_currentIndex < _screens.length - 1) {
      setState(() => _currentIndex += 1);
    }
  }

  void _onSwipeRight() {
    if (_currentIndex > 0) {
      setState(() => _currentIndex -= 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragEnd: (details) {
          if (details.velocity.pixelsPerSecond.dx < -200) {
            // swipe left
            _onSwipeLeft();
          } else if (details.velocity.pixelsPerSecond.dx > 200) {
            // swipe right
            _onSwipeRight();
          }
        },
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) {
            // Slide transition
            final offsetAnimation = Tween<Offset>(
              begin: const Offset(1, 0), // slide from right
              end: Offset.zero,
            ).animate(animation);
            return SlideTransition(position: offsetAnimation, child: child);
          },
          child: _screens[_currentIndex],
        ),
      ),
      bottomNavigationBar: BankingBottomNav(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
      ),
    );
  }
}
