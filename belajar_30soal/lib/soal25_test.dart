import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Validation Demo'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: MyCustomForm(),
        ),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  // Key untuk mengidentifikasi form dan mengakses status validasi
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Masukkan teks',
            ),
            // Validator untuk memeriksa apakah input kosong
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Mohon masukkan sesuatu';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Validasi form
              if (_formKey.currentState!.validate()) {
                // Jika validasi berhasil
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Validasi berhasil!'),
                  duration: Duration(seconds: 3),
                  ),
                );
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
