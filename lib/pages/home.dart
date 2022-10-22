import 'package:flutter/material.dart';
import 'package:rms/pages/dashboard.dart';
import 'package:rms/pages/profile.dart';
import 'package:rms/pages/reports.dart';
import 'package:rms/pages/timesheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  void navigationBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const DashboardScreen(),
    const TimesheetScreen(),
    const ReportsScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        // showSelectedLabels: true,
        // showUnselectedLabels: true,
        selectedItemColor: const Color(0xFF1a0a80),
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        onTap: navigationBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Dashboard"),
          BottomNavigationBarItem(
              icon: Icon(Icons.pending_actions_outlined), label: "TimeSheet"),
          BottomNavigationBarItem(
              icon: Icon(Icons.article_outlined), label: "Reports"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Profile"),
        ],
      ),
    );
  }
}
