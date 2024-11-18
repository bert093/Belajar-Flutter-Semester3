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
      home: SnackBarApp(),
    );
  }
}

class SnackBarApp extends StatelessWidget {
  const SnackBarApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack Bar App'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Ini Adalah SnackBar',
                style: TextStyle(fontSize: 20),
                ),
                duration: Duration(seconds: 3),
              ),
            );
          },
          child: const Text('Pencet Ini!'),
        ),
      ),
    );
  }
}