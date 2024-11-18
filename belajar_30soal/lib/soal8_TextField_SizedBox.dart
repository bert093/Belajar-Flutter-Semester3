import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
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
            Padding(
              padding: EdgeInsets.only(left: 100, top: 100, right: 100),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Test TextField menggunakan Column dan Padding.'
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 100, right: 100),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Test TextField 2',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}