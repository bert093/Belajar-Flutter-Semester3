import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget> [
            Container(
              width: 300,
              height: 300,
              color: Colors.blue,
            ),
            SizedBox(height: 30),
            Positioned(
              left: 20,
              top: 20,
              child: Text('Butuh child untuk positioned!'),
            ),
          ],
        ),
      ),
    );
  }
}