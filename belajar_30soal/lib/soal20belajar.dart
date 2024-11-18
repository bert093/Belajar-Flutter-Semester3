import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp ({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
bool Tombol = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Tombol ? Colors.black87 : Colors.white, //* nyala, dan mati.
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Switch(
                value: Tombol,
                onChanged: (value) {
                  setState((){
                    Tombol = value;
                  });
                }
              ),
              SizedBox(height: 10),
              Text(Tombol ? 'Tombol nyala' : 'Tombol mati',
              style: TextStyle(color: Tombol ? Colors.white : Colors.black87),
              ),
              SizedBox(height: 5),
              DefaultTextStyle( //* DefaultTextStyle untuk mengubah semua Text stylenya, tanpa membuat style satu-satu. 
                style: TextStyle(
                  color: Tombol ? Colors.white : Colors.black87,
                ),
                child: Column( //* DefaultTextStyle membutuhkan child.
                  children: <Widget> [
                    Text('Contoh column lagi 1'),
                    Text('Contoh column lagi 2'),
                    Text('Contoh column lagi 3'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}