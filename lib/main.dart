import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Information',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Unit Information"),
        ),
        body: const Center(
          child: Text('Welcome to Unit Information App!'),
        ),
      ),
    );
  }
}