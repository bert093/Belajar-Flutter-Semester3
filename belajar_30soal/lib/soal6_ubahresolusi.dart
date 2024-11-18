import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Image.asset('images/0c19ce5aa070eac62cc121c1e6a6011f.png',
          height: 500,
          width: 500,
          ),
        ),
      ),
    );
  }
}