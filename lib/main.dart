import 'package:flutter_application_1/belajar_sesi_8.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Flutter',

      // ─── DAFTAR SEMUA NAMED ROUTES ──────────────────────────────────
      // Setiap route punya nama (String) yang digunakan saat navigasi.
      // Cukup daftarkan widget-nya — argumen diterima langsung di dalam
      // widget via ModalRoute.of(context)!.settings.arguments
      initialRoute: '/product-list', // halaman pertama yang dibuka
      routes: {
        '/': (context) => BelajarSesi8(),
      },
      // ────────────────────────────────────────────────────────────────
    );
  }
  
}
