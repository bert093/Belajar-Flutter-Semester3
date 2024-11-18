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
        body: Column(
          children: <Widget> [
            Container(
              margin: EdgeInsets.only(left: 100, top: 100, right: 100),
              child: Text('ini text didalam container'),
            ),
          ],
        ),
      ),
    );
  }
}