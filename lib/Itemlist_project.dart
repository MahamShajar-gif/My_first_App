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
      home: ProductListScreen(),
    );
  }
}

class ProductListScreen extends StatelessWidget {
  ProductListScreen({super.key});

  // Hardcoded List
  final List<Map<String, dynamic>> products = [
    {"name": "Laptop", "price": 50000},
    {"name": "Phone", "price": 30000},
    {"name": "Headphones", "price": 5000},
    {"name": "Keyboard", "price": 2500},
    {"name": "Mouse", "price": 1500},
    {"name": "Monitor", "price": 20000},
    {"name": "Speaker", "price": 4000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Product List"),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: const Icon(Icons.shopping_bag),
              title: Text(products[index]["name"]),
              subtitle: Text("Rs. ${products[index]["price"]}"),
            ),
          );
        },
      ),
    );
  }
}