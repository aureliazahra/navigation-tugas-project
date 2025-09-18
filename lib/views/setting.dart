import 'package:flutter/material.dart';
import 'package:navigation/widgets/drawer.dart';

class Setting extends StatelessWidget {
  const Setting ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
        backgroundColor: const Color.fromARGB(255, 255, 159, 167),
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Text(
          'Ini halaman setting',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}