import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          title: const Text('ALAMAK SEDAP NI 😋',
          style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget> [
              Image.asset('images/0c19ce5aa070eac62cc121c1e6a6011f.png',
              height: 150,
              width: 150,
              fit: BoxFit.cover,
              ),
              Image.asset('images/pinterest_11610911538889979.jpg',
              height: 150,
              width: 150,
              fit: BoxFit.cover,
              ),
              Image.asset('images/pinterest_216383957091703489.jpg',
              height: 150,
              width: 150,
              fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}