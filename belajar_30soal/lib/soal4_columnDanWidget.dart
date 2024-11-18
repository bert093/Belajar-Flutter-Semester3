import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

// SOAL NO 4:  Bagaimana cara membuat kolom (column) dengan dua widget Text di Flutter?
class MyApp extends StatelessWidget{
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // text mulai dari kiri
          children: <Widget> [
            Text('test',
            style: TextStyle(fontSize: 50),
            ),
            Text('test 2 widget text',
            style: TextStyle(fontSize: 60),
            ),
          ],
        ),
      ),
    );
  }
}