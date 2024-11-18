import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget> [
            Row(
              children: <Widget> [
                Text('Text 1'),
                Text('Text 2'),
              ],
            ),
            Row(
              children: <Widget> [
                Text('Text 1 Row 2'),
                Text('Text 2 Row 2'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}