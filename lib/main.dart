import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,

      body: Center(
        child: Container(
          width: 320,
          padding: const EdgeInsets.all(20),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
              ),
            ],
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSceMNeudxCZWNAj7Erryd-LtKMdP9_XctpCU1prpp16A&s",
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                "Maham",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                "Flutter Developer",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 20),

              const Divider(),

              const SizedBox(height: 10),

              const Row(
                children: [
                  Icon(Icons.email),
                  SizedBox(width: 10),
                  Text("Maham@gmail.com"),
                ],
              ),

              const SizedBox(height: 10),

              Row(
                children: [
                  Icon(Icons.camera_alt, color: Colors.pink),
                  SizedBox(width: 10),
                  Text("She_Cadet"),
                ],
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Icon(Icons.snapchat, color: Colors.yellow),
                  SizedBox(width: 10),
                  Text("She_cadet"),
                ],
              ),

              const SizedBox(height: 10),

              const Row(
                children: [
                  Icon(Icons.location_on),
                  SizedBox(width: 10),
                  Text("Peshawar"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

