import 'package:flutter/material.dart';
import 'package:interval_pal/screens/dashboard_screen.dart';
import 'package:interval_pal/screens/workout_screen.dart';
import 'package:interval_pal/screens/template_screen.dart';
import 'package:interval_pal/screens/profile_screen.dart';
import 'package:interval_pal/screens/workout_screen.dart';
import 'package:interval_pal/screens/history_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<StatefulWidget> _pages = <StatefulWidget>[
    Dashboard(),
    Template(),
    Workout(),
    History(),
    Profile()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_rounded),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.paste_rounded),
            label: 'Templates',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Workout',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
