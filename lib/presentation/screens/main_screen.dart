import 'package:exercie_app/presentation/views/leaderboard_view.dart';
import 'package:exercie_app/presentation/views/profile_view.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    final screens = [ const LeaderboardView(), const ProfileView() ];

    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_sharp, color: Color.fromRGBO(70,70,72,1)),
            activeIcon: Icon(Icons.bar_chart_sharp, color: Color.fromRGBO(255, 255, 255, 1)),
            label: 'List',
            backgroundColor: Color.fromRGBO(46, 48, 50, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud, color: Color.fromRGBO(70,70,72,1)),
            activeIcon: Icon(Icons.cloud, color: Color.fromRGBO(255, 255, 255, 1)),
            label: 'Data',
            backgroundColor: Color.fromRGBO(46, 48, 50, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_clock, color: Color.fromRGBO(70,70,72,1)),
            activeIcon: Icon(Icons.lock_clock, color: Color.fromRGBO(255, 255, 255, 1)),
            label: 'Schedule',
            backgroundColor: Color.fromRGBO(46, 48, 50, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, color: Color.fromRGBO(70,70,72,1)),
            activeIcon: Icon(Icons.message, color: Color.fromRGBO(255, 255, 255, 1)),
            label: 'Messages',
            backgroundColor: Color.fromRGBO(46, 48, 50, 1),
          ),
         
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined, color: Color.fromRGBO(70,70,72,1)),
            activeIcon: Icon(Icons.person_2, color: Color.fromRGBO(255, 255, 255, 1)),
            label: 'Profile',
            backgroundColor: Color.fromRGBO(46, 48, 50, 1)
          ),
        ],
      ),
    );
  }
}