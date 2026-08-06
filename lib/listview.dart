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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView"),
        ),
        body: ListView(
          children: const [
            Text("Item 1"),
            Text("Item 2"),
            Text("Item 3"),
          ],
        ),
      ),
    );
  }
}