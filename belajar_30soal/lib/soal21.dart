import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Text ini snackbar'),
                  duration: Duration(seconds: 3), // durasi snackbar
                  action: SnackBarAction(
                    label: 'undo',
                    onPressed: () {}, // aksi jika tombol ditekan.
                  ),
                ),
              );
            },
            child: Text('Tampilkan Snackbar'),
          ),
        ),
      ),
    );
  }
}
