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
        appBar: AppBar(
          title: Text('Ini contoh title pada appbar'),
        ),
        drawer: Drawer(
          child: ListView(
            // padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Text Drawer Header!'),
              ),
              ListTile(
                title: Text('Item ke 1'),
                subtitle: Text('Item ke 2?'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}