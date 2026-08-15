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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Top Handle
              Container(
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Choose an Option",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              // Camera
              ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.camera_alt),
                ),
                title: const Text("Camera"),
                subtitle: const Text("Take a new photo"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              // Gallery
              ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.photo),
                ),
                title: const Text("Gallery"),
                subtitle: const Text("Choose from gallery"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              // Cancel
              ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.close),
                ),
                title: const Text("Cancel"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              const SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bottom Sheet",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),

      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            showBottomSheet(context);
          },
          icon: const Icon(Icons.menu),
          label: const Text("Open Bottom Sheet"),
        ),
      ),
    );
  }
}