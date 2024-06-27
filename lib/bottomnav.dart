import 'package:flutter/material.dart';
import 'package:assignment0/Screens/home.dart'; // Make sure to replace with actual paths
import 'package:assignment0/Screens/recent.dart';
import 'package:assignment0/Screens/mail.dart';
import 'package:assignment0/Screens/option.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Home(), // Replace with actual widgets
    recent(),
    mail(),
    option(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 218, 10, 10),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        // fixedColor: Colors.deepPurple,
        currentIndex: _selectedIndex,
        items: [
          _buildNavItem(Icons.home, 'Home'),
          _buildNavItem(Icons.access_time, 'History'),
          _buildNavItem(Icons.email_outlined, 'Messages'),
          _buildNavItem(Icons.tune, 'Options'),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(IconData icon, String text) {
    return BottomNavigationBarItem(
      icon: Icon(icon, size: 25),
      label: text,
    );
  }
}
