import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: <Widget> [
            Row(
              children: <Widget> [
                Text('Text A'),
                Text('Text B'),
                Text('Text C'),
                Text('Text D'),
                Text('Text E'),
                Text('Text F'),
              ],
            ),
            Row(
              children: <Widget> [
                Text('G'),
                Text('H'),
                Text('I'),
                Text('J')
              ],
            ),
          ],
        ),
      ),
    );
  }
}