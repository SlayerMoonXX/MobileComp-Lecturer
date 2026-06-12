import 'package:flutter/material.dart';
import '../models/student.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Menangkap argumen dari Halaman 1
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final Student student = args['student'];
    final int totalStudents = args['totalStudents'];

    // Batas minimum daftar: dinonaktifkan jika jumlah saat ini 3
    final bool canDelete = totalStudents > 3;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(student.avatar),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              student.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: ListTile(
                leading: const Icon(Icons.location_on, color: Colors.blue),
                title: const Text('Domisili'),
                subtitle: Text(student.domisili),
              ),
            ),
            Card(
              margin: const EdgeInsets.only(bottom: 32),
              child: ListTile(
                leading: const Icon(Icons.phone, color: Colors.green),
                title: const Text('Nomor HP'),
                subtitle: Text(student.phone),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: canDelete ? Colors.red : Colors.grey,
                  foregroundColor: Colors.white,
                ),
                onPressed: canDelete
                    ? () {
                        // Kembali ke Halaman 1 membawa instruksi penghapusan
                        Navigator.pop(context, 'delete');
                      }
                    : null,
                child: const Text('Hapus Akun Ini', style: TextStyle(fontSize: 16)),
              ),
            ),
            if (!canDelete)
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  'Daftar minimum adalah 3 mahasiswa.',
                  style: TextStyle(color: Colors.red, fontSize: 12),
                ),
              ),
          ],
        ),
      ),
    );
  }
}