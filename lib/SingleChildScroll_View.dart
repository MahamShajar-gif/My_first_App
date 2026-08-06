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
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink.shade200,
          title: const Text("SingleChildScrollView"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                const SizedBox(height: 5),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
                const SizedBox(height: 5),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                const SizedBox(height: 5),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
                const SizedBox(height: 5),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.orange,
                ),
                const SizedBox(height: 5),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.purple,
                ),
                const SizedBox(height: 5),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.pink,
                ),
                const SizedBox(height: 5),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.teal,
                ),
                const SizedBox(height: 5),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.brown,
                ),
                const SizedBox(height: 5),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.cyan,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}