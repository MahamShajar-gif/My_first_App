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

  int count = 0;
  Color boxColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.green,
          title: const Text('GestureDetector'),
        ),
        body: Center(
          child: GestureDetector(

            // Single Tap
            onTap: () {
              setState(() {
                count++;
              });
            },

            // Double Tap
            onDoubleTap: () {
              setState(() {
                count = 0;
                boxColor = Colors.teal;
              }
              );
            },

            // Long Press
            onLongPress: () {
              setState(() {
                boxColor = Colors.purple;
              });
            },

            child: Container(
              width: 200,
              height: 150,
              color: boxColor,

              child: Center(
                child: Text(
                  '$count',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}