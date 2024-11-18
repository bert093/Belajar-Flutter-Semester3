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
        appBar: AppBar( //* MENGGUNAKAN drawer, HARUS ADA APPBAR!
          title: Text('Test 1'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget> [
              DrawerHeader(
                child: Text('Menu'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Item ke 1'),
                subtitle: Text('Item ke 2'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}