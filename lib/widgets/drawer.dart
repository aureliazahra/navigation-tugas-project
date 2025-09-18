import 'package:flutter/material.dart';
import 'package:navigation/views/halaman_1.dart';
import 'package:navigation/views/profile.dart';
import 'package:navigation/views/setting.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 110, 39, 69)),
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            ),
            ListTile(
              title: const Text("Halaman 1"),
              onTap: () {
                Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (context) => Halaman1()));
              },
            ),
            ListTile(
              title: const Text("Halaman Profile"),
              onTap: () {
                Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (context) => const Profile()));
              },
            ),
            ListTile(
              title: const Text("Halaman Settings"),
              onTap: () {
                Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (context) => const Setting()));
              },
            ),
        ],
      ),
    );
  }
}