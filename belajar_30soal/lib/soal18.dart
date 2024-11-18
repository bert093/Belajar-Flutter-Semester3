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
            Container(
              height: 100,
              width: 300,
              color: Colors.blue,            
            ),
            const Positioned(
              left: 20,
              top: 20,
              child: Text('Test menggunakan positioned'),
            ),
          ],
        ),
      ),
    );
  }
}