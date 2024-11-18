import 'package:flutter/material.dart';

class PageBaru1 extends StatelessWidget {
  const PageBaru1 ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test Halaman Baru'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: const Center(
          child: Text('Contoh Text lagi'),
        ),
      ),
    );
  }
}