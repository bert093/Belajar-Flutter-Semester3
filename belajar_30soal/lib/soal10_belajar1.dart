import 'package:belajar_30soal/soal10_belajar2.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePageSaya(),
        '/Page1': (context) => PageBaru1(),
      },
      // home: HomePageSaya(),
    );
  }
}

class HomePageSaya extends StatelessWidget {
  const HomePageSaya ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Ini Untuk Halaman Utama'),
      ),
      body: Center(
        child: Column(
          children: <Widget> [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Page1');
              },
              child: const Text('Buka Halaman Baru 1'),
            ),
          ],
        ),
      ),
    );
  }
}