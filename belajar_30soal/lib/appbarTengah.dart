import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: const Text("Test AppBar",
            style: TextStyle(fontSize: 50), // sy kasih untuk ukuran fontSize
          ),
          centerTitle: true,
          backgroundColor: Colors.blue, // memberikan warna biru.
        ),
      ),
    );
  }
}