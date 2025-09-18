import 'package:flutter/material.dart';
import 'package:navigation/pages/login_page.dart';
import 'package:navigation/views/halaman_1.dart';
import 'package:navigation/widgets/bottom_navigation.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Mavigation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 243, 133, 225)),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
