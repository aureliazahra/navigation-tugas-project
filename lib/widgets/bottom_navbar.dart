import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../pages/home_page.dart';
import '../pages/profile_page.dart';

class MyBottomNavbar extends StatefulWidget {
  const MyBottomNavbar({super.key});

  @override
  State<MyBottomNavbar> createState() => _MyBottomNavbarState();
}

class _MyBottomNavbarState extends State<MyBottomNavbar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [const HomePage(), const ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1)
            )
          ],
        ),
        child: Padding(padding: const EdgeInsets.symmetric(vertical: 12),
        child: GNav(tabs: const [
          GButton(icon: Icons.home,
          text: 'Home',),
          GButton(icon: Icons.person, text: 'Profikle',)
        ]),
        ),
      ),
    );
  }
}
