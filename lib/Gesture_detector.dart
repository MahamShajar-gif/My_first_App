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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text = "Tap Me 😸";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Hello",
          style: TextStyle(
            color: Color(0xFF000080),
          ),
        ),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              text = "You Tapped Me! 😸";
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 15,
            ),
            decoration: BoxDecoration(
              color: Color(0xFF000080),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}