import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

// SOAL NO 5: Bagaimana cara membuat tombol di Flutter?
class MyApp extends StatelessWidget{
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {},
            child: Icon(Icons.apple),
          ),
        ),
      ),
    );
  }
}