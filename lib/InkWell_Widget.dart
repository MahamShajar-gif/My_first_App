import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// YAHAN food items ki list likho
final List<Map<String, dynamic>> foodItems = [
  {
    "name": "Chicken Burger",
    "price": 450,
    "rating": 4.8,
    "icon": Icons.lunch_dining,
  },
  {
    "name": "Cheese Pizza",
    "price": 800,
    "rating": 4.7,
    "icon": Icons.local_pizza,
  },
  {
    "name": "Loaded Fries",
    "price": 300,
    "rating": 4.6,
    "icon": Icons.fastfood,
  },
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Food Menu",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.purple,
        ),

        // YAHAN ListView.builder lagega
        body: ListView.builder(
          itemCount: foodItems.length,
          itemBuilder: (context, index) {
            final item = foodItems[index];

            return Card(
              margin: const EdgeInsets.all(10),
              child: ListTile(
                leading: Icon(
                  item["icon"],
                  size: 40,
                  color: Colors.purple,
                ),
                title: Text(item["name"]),
                subtitle: Text(
                  "Rs. ${item["price"]}",
                ),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Add"),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}