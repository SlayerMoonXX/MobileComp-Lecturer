import 'package:flutter/material.dart';
import '../models/student.dart';
import '../data/app_data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Inisialisasi daftar dengan data awal yang disediakan
  List<Student> students = List.from(initialStudentsData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Directory'),
        centerTitle: true,
      ),
      body: students.isEmpty
          ? Center(child: Text('Daftar mahasiswa kosong.'))
          : GridView.builder(
              padding: EdgeInsets.all(12),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.8,
              ),
              itemCount: students.length,
              itemBuilder: (context, index) {
                final student = students[index];
                return GestureDetector(
                  onTap: () async {
                    // Tap kartu membuka Halaman 3 (Profile)
                    final result = await Navigator.pushNamed(
                      context,
                      '/profile',
                      arguments: {
                        'student': student,
                        'totalStudents': students.length,
                      },
                    );
                    
                    // Menghapus mahasiswa jika kembali dengan flag 'delete'
                    if (result == 'delete') {
                      setState(() {
                        students.removeAt(index);
                      });
                    }
                  },
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(student.avatar),
                        ),
                        SizedBox(height: 12),
                        Text(
                          student.name,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4),
                        Text(
                          student.domisili,
                          style: TextStyle(color: Colors.grey[600], fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Buka Halaman 2 (Tambah Mahasiswa)
          final newStudent = await Navigator.pushNamed(context, '/add');
          
          // Tambahkan data baru ke daftar
          if (newStudent != null && newStudent is Student) {
            setState(() {
              students.add(newStudent);
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}