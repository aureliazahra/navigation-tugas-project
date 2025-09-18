import 'package:flutter/material.dart';

class Halaman2 extends StatelessWidget {
  const Halaman2({super.key, required this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman 2'),
        backgroundColor: const Color.fromARGB(255, 190, 218, 255),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Halaman 2', style: TextStyle(fontSize: 30)),
            const SizedBox(height: 20),
            Text(
              "Data dari Halaman 1: $data",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            const Text(
              'Pilih salah satu warna di bawah',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: ListView(
                children: [
                  ListTile(
                    leading: const CircleAvatar(backgroundColor: Color.fromARGB(255, 255, 124, 114)),
                    title: const Text('Merah'),
                    onTap: () => Navigator.pop(context, Color.fromARGB(255, 255, 124, 114)),
                  ),
                  ListTile(
                    leading: const CircleAvatar(backgroundColor: Color.fromARGB(255, 176, 205, 255)),
                    title: const Text('Biru'),
                    onTap: () => Navigator.pop(context, Color.fromARGB(255, 176, 205, 255)),
                  ),
                  ListTile(
                    leading: const CircleAvatar(backgroundColor: Color.fromARGB(255, 139, 255, 148)),
                    title: const Text('Hijau'),
                    onTap: () => Navigator.pop(context, Color.fromARGB(255, 139, 255, 148)),
                  ),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
