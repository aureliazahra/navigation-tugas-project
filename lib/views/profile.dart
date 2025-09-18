import 'package:flutter/material.dart';
import 'package:navigation/widgets/drawer.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color.fromARGB(255, 241, 159, 255),
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Text(
          'Ini halaman profile',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}