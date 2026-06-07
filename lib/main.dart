// File: lib/main.dart

import 'package:flutter/material.dart';
import 'page_one.dart';
import 'page_two.dart';
import 'page_three.dart';

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
      // ─── PENGGUNAAN NAMED ROUTES ───
      initialRoute: '/', // Halaman pertama yang dibuka
      routes: {
        '/': (context) => const PageOne(),
        '/page-two': (context) => const PageTwo(),
        '/page-three': (context) => const PageThree(),
      },
    );
  }
}