// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'dart:math';
import 'package:flutter/material.dart';
import '../models/student.dart';
import '../data/app_data.dart';

class AddStudentPage extends StatefulWidget {
  @override
  _AddStudentPageState createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddStudentPage> {
  final _formKey = GlobalKey<FormState>();
  
  late String selectedAvatar;
  String name = '';
  String domisili = domisiliList.first;
  String phone = '';
  bool hasConsented = false;

  @override
  void initState() {
    super.initState();
    // Avatar dipilih secara acak saat halaman dibuka
    selectedAvatar = avatarList[Random().nextInt(avatarList.length)];
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final newStudent = Student(
        name: name,
        avatar: selectedAvatar,
        domisili: domisili,
        phone: phone,
      );
      // Kembali ke Halaman 1 membawa data baru
      Navigator.pop(context, newStudent);
    } else {
      // Tampilkan error jika validasi gagal
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Mohon lengkapi nama dan nomor HP dengan benar.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tambah Mahasiswa')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(selectedAvatar),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nama Lengkap',
                  border: OutlineInputBorder(),
                ),
                validator: (value) => (value == null || value.trim().isEmpty) ? 'Nama wajib diisi' : null,
                onSaved: (value) => name = value!.trim(),
              ),
              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Domisili',
                  border: OutlineInputBorder(),
                ),
                value: domisili,
                items: domisiliList.map((d) => DropdownMenuItem(value: d, child: Text(d))).toList(),
                onChanged: (value) {
                  if (value != null) setState(() => domisili = value);
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nomor HP',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) => (value == null || value.trim().isEmpty) ? 'Nomor HP wajib diisi' : null,
                onSaved: (value) => phone = value!.trim(),
              ),
              SizedBox(height: 20),
              CheckboxListTile(
                title: Text("Saya menyatakan bahwa data yang saya masukkan adalah benar."),
                value: hasConsented,
                onChanged: (val) {
                  setState(() => hasConsented = val ?? false);
                },
                controlAffinity: ListTileControlAffinity.leading,
                contentPadding: EdgeInsets.zero,
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: hasConsented ? _submitForm : null,
                  child: Text('Submit', style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}