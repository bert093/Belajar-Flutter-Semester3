import 'package:flutter/material.dart';
void main() {
  runApp(ValidasiApp());
}

class ValidasiApp extends StatelessWidget{
  const ValidasiApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ValidasiFormApp()
    );
  }
}

class ValidasiFormApp extends StatefulWidget {
  const ValidasiFormApp({super.key});

  @override
  State<ValidasiFormApp> createState() => _ValidasiFormAppState();
}

class _ValidasiFormAppState extends State<ValidasiFormApp> {
  final _formkey GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'test',
            ),
          ),
        ],
      ),
    );
  }
}