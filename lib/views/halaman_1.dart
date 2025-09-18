import 'package:flutter/material.dart';
import 'package:navigation/views/halaman_2.dart';

class Halaman1 extends StatefulWidget {
  Halaman1({super.key});

  @override
  State<Halaman1> createState() => _Halaman1State();
}

class _Halaman1State extends State<Halaman1> {
  final TextEditingController dataTextField = TextEditingController();
  Color selectedColor = const Color.fromARGB(255, 255, 181, 222);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman 1"),
        backgroundColor: const Color.fromARGB(255, 252, 215, 227),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 100, height: 100, color: selectedColor),
            const SizedBox(height: 20),
            const Text("Halaman 1", style: TextStyle(fontSize: 30)),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: dataTextField,
                decoration: const InputDecoration(
                  labelText: 'Masukkan sebuah teks',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () async {
                String data = dataTextField.text;
                final hasil = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Halaman2(data: dataTextField.text),
                  ),
                );

                if (hasil != null) {
                  setState(() {
                    selectedColor = hasil;
                  });
                }
              },
              icon: const Icon(Icons.navigate_next),
              label: const Text(
                "Ke halaman 2",
                style: TextStyle(color: Color.fromARGB(255, 255, 234, 234)),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 150, 1, 46),
                iconColor: const Color.fromARGB(255, 255, 240, 240),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
