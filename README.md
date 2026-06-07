# Tugas Mobile Computing: Aplikasi Profil Mahasiswa 📱

Repositori ini berisi *source code* untuk tugas mata kuliah **Mobile Computing**. Aplikasi ini dibangun menggunakan framework **Flutter** dan mendemonstrasikan implementasi antarmuka pengguna (UI) dasar serta alur navigasi multi-halaman (*routing*) dalam pengembangan aplikasi *mobile*.

## 📋 Deskripsi Proyek

Aplikasi ini adalah simulasi direktori data mahasiswa yang memungkinkan pengguna untuk melihat daftar mahasiswa, membaca profil detail, dan memperbesar foto profil. Proyek ini difokuskan pada manajemen *state* navigasi yang efisien, pengiriman data antar layar (*passing data via constructor*), dan optimasi *rendering* daftar panjang.

## ✨ Fitur Utama

1. **Halaman Daftar (List Page):** 
   - Menampilkan daftar mahasiswa menggunakan `ListView.builder` untuk efisiensi memori.
   - Menggunakan komponen `ListTile` dan `CircleAvatar` untuk UI yang rapi.
2. **Halaman Detail (Profile Page):** 
   - Menerima objek data mahasiswa secara dinamis dari halaman sebelumnya.
   - Mengimplementasikan `GestureDetector` pada avatar untuk interaksi sentuhan.
3. **Halaman Tampilan Foto (Image Viewer Page):** 
   - Menampilkan gambar dalam ukuran penuh.
   - Dilengkapi tombol navigasi pintas menggunakan `Navigator.popUntil()` untuk kembali langsung ke halaman utama tanpa melewati halaman perantara.

## 🛠️ Teknologi & Tools

- **Framework:** [Flutter](https://flutter.dev/) 
- **Bahasa Pemrograman:** Dart
- **IDE yang Disarankan:** VS Code / Android Studio
- **Layanan Eksternal:** Pravatar API (untuk *dummy image generator*)

## 🚀 Cara Menjalankan Proyek (Untuk Dosen/Reviewer)

Ikuti langkah-langkah berikut untuk menguji aplikasi ini di *local environment* Anda:

1. **Clone repositori ini:**
```bash
   git clone [https://github.com/username-kamu/nama-repo-kamu.git](https://github.com/username-kamu/nama-repo-kamu.git)