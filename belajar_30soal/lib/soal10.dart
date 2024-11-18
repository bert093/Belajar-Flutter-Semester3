import 'package:flutter/material.dart';
import 'package:belajar_30soal/soal10_newpage.dart';

void main() {
  runApp(MyApp());
}

// Bagaimana cara membuat aplikasi Flutter menampilkan halaman baru saat tombol ditekan?
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Utama'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigasi ke halaman baru
            Navigator.push(context, MaterialPageRoute(builder: (context) => NewPage()),
            );
          },
          child: const Text('Buka Halaman Baru'),
        ),
      ),
    );
  }
}