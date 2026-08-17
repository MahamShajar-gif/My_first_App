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
      home: const MoodPage(),
    );
  }
}

// Reusable Widget
class MoodCard extends StatelessWidget {
  final String mood;
  final String emoji;
  final String message;

  const MoodCard({
    super.key,
    required this.mood,
    required this.emoji,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Text(
              emoji,
              style: const TextStyle(fontSize: 40),
            ),

            const SizedBox(width: 15),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mood,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(message),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MoodPage extends StatelessWidget {
  const MoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Mood",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),

      body: ListView(
        children: const [

          MoodCard(
            mood: "Happy",
            emoji: "😊",
            message: "Keep smiling!",
          ),

          MoodCard(
            mood: "Excited",
            emoji: "🤩",
            message: "Enjoy your moment!",
          ),

          MoodCard(
            mood: "Sad",
            emoji: "😔",
            message: "Everything will be okay.",
          ),

          MoodCard(
            mood: "Tired",
            emoji: "😴",
            message: "Take some rest.",
          ),

          MoodCard(
            mood: "Angry",
            emoji: "😡",
            message: "Take a deep breath.",
          ),
        ],
      ),
    );
  }
}