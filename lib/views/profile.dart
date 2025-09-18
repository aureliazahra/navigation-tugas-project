import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color.fromARGB(255, 241, 159, 255),
      ),
      body: const Center(
        child: Text(
          'Ini halaman profile',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}