// Bagaimana cara mengubah warna latar belakang Scaffold di Flutter?
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
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Text('Ini Soal nomer 11'),
          centerTitle: true,
        ),
      ),
    );
  }
}