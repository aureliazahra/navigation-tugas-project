import 'package:flutter/material.dart';
import 'package:navigation/views/halaman_1.dart';
import 'package:navigation/views/profile.dart';
import 'package:navigation/views/setting.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [Halaman1(), Profile(), Setting()];

  void _onItemTapped(int Index) {
    setState(() {
      _selectedIndex = Index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contoh Bottom Nav'),
        backgroundColor: const Color.fromARGB(255, 71, 28, 121),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda',), 
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil',), 
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Pengaturan',), 

        ],
      ),
    );
  }
}
