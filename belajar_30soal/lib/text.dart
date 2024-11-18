import 'package:flutter/material.dart';
void main() {
  runApp(SyahrilApp());
}

class SyahrilApp extends StatelessWidget {
  const SyahrilApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('test saya',
          style: TextStyle(fontSize: 50),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget> [
            Container(
              margin: EdgeInsets.all(8),
              child: Text()
            ),
          ],
        ),
      ),
    );
  }
}