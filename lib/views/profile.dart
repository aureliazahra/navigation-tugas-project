import 'package:flutter/material.dart';
import 'package:navigation/widgets/drawer.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Ini halaman profile', style: TextStyle(fontSize: 30)),
    );
  }
}
