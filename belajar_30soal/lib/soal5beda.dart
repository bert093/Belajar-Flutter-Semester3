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
        body: Center(
          child: ElevatedButton.icon(
            onPressed: () {},
            label: Text('Saya'),
            icon: Icon(Icons.apple_outlined, color: Colors.black),
          ),
        ),
      ),
    );
  }
}