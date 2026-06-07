// File: lib/page_two.dart

import 'package:flutter/material.dart';
import 'student.dart';
import 'page_three.dart';

class PageTwo extends StatelessWidget {
  // Menerima data melalui constructor
  final Student student;

  const PageTwo({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Mahasiswa')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            // GestureDetector membuat gambar bisa ditekan
            GestureDetector(
              onTap: () {
                // Navigasi ke Page 3, hanya mengirim URL foto
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageThree(imageUrl: student.imageUrl),
                  ),
                );
              },
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(student.imageUrl),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              student.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              student.description,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}