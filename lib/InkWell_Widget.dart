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
  int cartCount = 0;

  List<bool> isAdded = [false, false, false];

  final List<String> foodItems = [
    "Zinger Burger 🍔",
    "Pizza 🍕",
    "Fries 🍟",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food App"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Center(
              child: Text(
                "Cart: $cartCount 🛒",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  setState(() {
                    if (isAdded[index]) {
                      isAdded[index] = false;
                      cartCount--;
                    } else {
                      isAdded[index] = true;
                      cartCount++;
                    }
                  });
                },

                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.pink.shade50,
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Row(
                    children: [
                      const Icon(
                        Icons.fastfood,
                        size: 50,
                        color: Colors.orange,
                      ),

                      const SizedBox(width: 20),

                      Expanded(
                        child: Text(
                          foodItems[index],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Icon(
                        isAdded[index]
                            ? Icons.check_circle
                            : Icons.add_shopping_cart,
                        color: isAdded[index]
                            ? Colors.green
                            : Colors.pink,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}