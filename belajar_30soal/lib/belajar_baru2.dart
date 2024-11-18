import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> _imagePaths = [
    'images/0c19ce5aa070eac62cc121c1e6a6011f.png',
    'images/pinterest_11610911538889979.jpg',
    'images/pinterest_216383957091703489.jpg',
  ];

  void _addNewImage(List<String> newImagePaths) {
    setState(() {
      _imagePaths.addAll(newImagePaths); // Menambahkan beberapa gambar
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          title: const Text(
            'ALAMAK SEDAP NI 😋',
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(8.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Jumlah kolom
                  crossAxisSpacing: 8, // Jarak antar kolom
                  mainAxisSpacing: 8, // Jarak antar baris
                ),
                itemCount: _imagePaths.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    _imagePaths[index],
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  _addNewImage([
                    'images/0c19ce5aa070eac62cc121c1e6a6011f.png',
                    'images/pinterest_11610911538889979.jpg',
                    'images/pinterest_216383957091703489.jpg',
                  ]); // Tambahkan beberapa gambar
                },
                child: const Text('Tambahkan Gambar Baru'),
              ),
            ),
            Text('Contoh diluar Text'),
            Text('Contoh diluar Text2'),
          ],
        ),
      ),
    );
  }
}
