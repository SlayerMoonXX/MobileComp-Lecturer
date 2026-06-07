// File: lib/page_two.dart

import 'package:flutter/material.dart';
import 'student.dart';

class PageTwo extends StatelessWidget {
  // Constructor menjadi kosong tanpa parameter 'student'
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    // Menangkap data 'student' dari arguments
    final student = ModalRoute.of(context)!.settings.arguments as Student;

    return Scaffold(
      appBar: AppBar(title: const Text('Profil Mahasiswa')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Navigasi ke Page 3 menggunakan Named Route, hanya mengirim URL foto
                Navigator.pushNamed(
                  context,
                  '/page-three',
                  arguments: student.imageUrl,
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