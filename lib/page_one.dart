// File: lib/page_one.dart

import 'package:flutter/material.dart';
import 'student.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Student> students = [
      Student(
        name: 'Andi Setiawan',
        imageUrl: 'https://i.pravatar.cc/150?img=11', 
        description: 'Mahasiswa Ilmu Komputer Universitas Cakrawala angkatan 2024. Aktif di BEM.',
      ),
      Student(
        name: 'Budi Santoso',
        imageUrl: 'https://i.pravatar.cc/150?img=13',
        description: 'Fokus pada pengembangan Back-End dan Data Engineering.',
      ),
      Student(
        name: 'Citra Kirana',
        imageUrl: 'https://i.pravatar.cc/150?img=5',
        description: 'Mahasiswa berprestasi dengan spesialisasi UI/UX Design.',
      ),
      Student(
        name: 'Diana Putri',
        imageUrl: 'https://i.pravatar.cc/150?img=9',
        description: 'Sedang mengerjakan proyek analisis data operasional transportasi.',
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Mahasiswa')),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(student.imageUrl),
            ),
            title: Text(student.name),
            onTap: () {
              // Navigasi menggunakan Named Route dan mengirim arguments
              Navigator.pushNamed(
                context, 
                '/page-two', 
                arguments: student, // Data student diselipkan di sini
              );
            },
          );
        },
      ),
    );
  }
}