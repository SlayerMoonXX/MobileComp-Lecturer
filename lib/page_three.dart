import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  final String imageUrl;

  const PageThree({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
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
                // Menutup halaman satu per satu sampai bertemu halaman pertama (Page 1)
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