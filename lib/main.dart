import 'package:flutter/material.dart';
import 'page_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Mahasiswa',
      theme: ThemeData(primarySwatch: Colors.blue),
      // Set PageOne sebagai halaman pertama (route.isFirst nantinya akan mengarah ke sini)
      home: const PageOne(), 
    );
  }
}