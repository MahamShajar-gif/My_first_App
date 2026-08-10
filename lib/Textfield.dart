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
          title: const Text("TextField Example"),
          backgroundColor: Colors.pink.shade200,
        ),

        body: Padding(
          padding: const EdgeInsets.all(20),

          child: TextField(
            decoration: InputDecoration(
              labelText: "Enter your name",
              hintText: "Type here...",
              border: const OutlineInputBorder(),
              prefixIcon: const Icon(Icons.person),
            ),
          ),
        ),
      ),
    );
  }
}