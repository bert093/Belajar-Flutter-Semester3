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
          child: Builder(
            builder: (context) {
              double lebarLayar = MediaQuery.of(context).size.width;
              double tinggiLayar = MediaQuery.of(context).size.height;
              return Text('Lebar layar: $lebarLayar, $tinggiLayar');
            },
          ),
        ),
      ),
    );
  }
}