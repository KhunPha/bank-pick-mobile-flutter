// import 'package:bankpick/screens/profile_screen.dart';
import 'package:bankpick/screens/setting_tab.dart';
import 'package:bankpick/util/baking_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:bankpick/screens/home_tab.dart';
import 'package:bankpick/screens/my_card_tab.dart';
import 'package:bankpick/screens/statistics_tab.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      // body: ProfileScreen(),
      bottomNavigationBar: BankingBottomNav(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
