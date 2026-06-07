// File: lib/page_three.dart

import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  // Constructor kosong
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    // Menangkap data 'imageUrl' (bertipe String) dari arguments
    final imageUrl = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: const Text('Foto Mahasiswa')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageUrl,
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              onPressed: () {
                // Kembali langsung ke initialRoute ('/')
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text(
                'Kembali ke Daftar',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}