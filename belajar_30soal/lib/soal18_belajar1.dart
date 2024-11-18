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
        body: Stack(
          children: <Widget> [
            Positioned(
              top: 100,
              left: 0,
              height: 150,
              width: 150,
              child: Image.asset('images/pinterest_11610911538889979.jpg',
              fit: BoxFit.cover
              ),
            ),
            Positioned(
              top: 100,
              left: 180,
              height: 150,
              width: 150,
              child: Image.asset('images/pinterest_216383957091703489.jpg',
              fit: BoxFit.cover
              ),
            ),
          ],
        ),
      ),
    );
  }
}