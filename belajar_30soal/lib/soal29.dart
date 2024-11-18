import 'package:flutter/material.dart';
void main() {
  runApp(GradientBackground());
}

class GradientBackground extends StatelessWidget {
  const GradientBackground ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: RotatedBox(
            quarterTurns: 120,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blue, Colors.green, Colors.cyanAccent]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}