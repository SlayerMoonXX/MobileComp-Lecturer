import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/add_student_page.dart';
import 'pages/profile_page.dart';

void main() {
  runApp(StudentDirectoryApp());
}

class StudentDirectoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Directory',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.grey[50],
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/add': (context) => AddStudentPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}