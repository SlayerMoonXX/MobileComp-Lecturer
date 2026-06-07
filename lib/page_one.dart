import 'package:flutter/material.dart';
import 'student.dart';
import 'page_two.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data minimal 4 item
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
              // Navigasi ke Page 2 dan kirim data 'student' via konstruktor
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageTwo(student: student),
                ),
              );
            },
          );
        },
      ),
    );
  }
}