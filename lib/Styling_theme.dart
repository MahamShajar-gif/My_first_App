/*import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Advanced Theme App",

      theme: ThemeData(
        useMaterial3: true,

        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.light,
        ),

        scaffoldBackgroundColor: const Color(0xFFF5F3FF),

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 5,
          shadowColor: Colors.black45,
          titleTextStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1,
          ),
        ),

        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
          headlineMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
            color: Colors.black87,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            minimumSize: const Size(180, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        cardTheme: CardThemeData(
          elevation: 8,
          shadowColor: Colors.deepPurple,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.all(20),
        ),

        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          hintStyle: const TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.deepPurple),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Colors.deepPurple,
              width: 2,
            ),
          ),
        ),
      ),

      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Advanced Theme"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Welcome!",
              style: Theme.of(context).textTheme.headlineLarge,
            ),

            const SizedBox(height: 10),

            Text(
              "This app uses an advanced custom theme.",
              style: Theme.of(context).textTheme.bodyLarge,
            ),

            const SizedBox(height: 25),

            const TextField(
              decoration: InputDecoration(
                hintText: "Enter your name",
                prefixIcon: Icon(Icons.person),
              ),
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {},
              child: const Text("Continue"),
            ),

            const SizedBox(height: 25),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: const [
                    Icon(
                      Icons.flutter_dash,
                      size: 70,
                      color: Colors.deepPurple,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Flutter Theme Demo",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/


/*import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,


    theme: ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade100,

    appBarTheme: const AppBarTheme(
    backgroundColor: Colors.purple,
    foregroundColor: Colors.white,
      centerTitle: true,
    ),

    textTheme: const TextTheme(
    bodyLarge: TextStyle(
    fontSize: 22,
    color: Colors.deepPurple,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),

    home: Scaffold(
    appBar: AppBar(
    title: const Text("My App"),
    ),

    body: Center(
    child: Text(
    "Hello Flutter",
    style: Theme.of(context).textTheme.bodyLarge,
    ),
    ),
    ),
    );


  }
}*/

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

      theme: ThemeData(
        fontFamily: "Poppins", // Custom Font

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
        ),

        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontSize: 22,
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Demo"),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TextStyle
              Text(
                "Hello Flutter",
                style: Theme.of(context).textTheme.bodyLarge,
              ),

              const SizedBox(height: 20),

              // Asset Image
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIzzmfTuO0yhRdBMsPYCn5G2UdKApMrge6QKXXI4xM2g&s=10",
                height: 120,
                width: 120,
              ),

              const SizedBox(height: 20),

              // Network Image
              Image.network(
                "https://picsum.photos/200",
                height: 120,
                width: 120,
              ),

              const SizedBox(height: 20),

              // Icons
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home, color: Colors.purple, size: 35),
                  SizedBox(width: 20),
                  Icon(Icons.favorite, color: Colors.red, size: 35),
                  SizedBox(width: 20),
                  Icon(Icons.person, color: Colors.blue, size: 35),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}