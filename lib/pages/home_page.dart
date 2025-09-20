import 'package:flutter/material.dart';
import 'package:navigation/widgets/data_container.dart';
import 'package:navigation/widgets/health__container.dart';

class HomePage extends StatelessWidget {
  final String username;
  const HomePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  username.isEmpty ? "Hello, John Doe": 'Hello, $username',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 5),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "loren ipsum dolor sit amet, \nconsectetur adispicing elit. Sed do \niusmod tempor",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w100),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DateContainer(day: 'Mon', date: '21', isActive: false),
                  DateContainer(day: 'Tue', date: '22', isActive: false),
                  DateContainer(day: 'Wed', date: '23', isActive: true),
                  DateContainer(day: 'Thu', date: '24', isActive: false),
                  DateContainer(day: 'Fri', date: '25', isActive: false),
                ],
              ),
              const SizedBox(height: 15),
              Divider(thickness: 1, color: Colors.grey[300]),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HealthCard(
                    icon: Icons.favorite,
                    label: 'Heart Rate',
                    value: '78',
                    unit: 'bpm',
                    iconColor: Color.fromRGBO(112, 66, 201, 1.0),
                    backgroundColor: Color.fromRGBO(112, 66, 201, 0.1),
                  ),
                  SizedBox(width: 30),
                  HealthCard(
                    icon: Icons.flash_on,
                    label: 'Exercise',
                    value: '24',
                    unit: 'min',
                    iconColor: Color.fromRGBO(206, 68, 187, 1.0),
                    backgroundColor: Color.fromRGBO(197, 74, 95, 0.102),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
