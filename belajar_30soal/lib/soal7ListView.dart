import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

// Bagaimana cara menggunakan ListView untuk menampilkan daftar teks?
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: const <Widget> [
            Text('Test ListView1'),
            Text('Test ListView2'),
            Text('Test ListView3'),
          ],
        ),
      ),
    );
  }
}