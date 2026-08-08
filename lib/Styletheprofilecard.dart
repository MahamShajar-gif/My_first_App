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
        scaffoldBackgroundColor: const Color(0xFFF9F0FC),

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
      ),

      home: const ProfileScreen(),
    );
  }
}

// ---------------- PROFILE SCREEN ----------------

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Profile",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(30),
            padding: const EdgeInsets.all(35),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),

            child: Column(
              children: [

                // Profile Picture
                const CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSceMNeudxCZWNAj7Erryd-LtKMdP9_XctpCU1prpp16A&s",
                  ),
                ),

                const SizedBox(height: 20),

                // Name
                const Text(
                  "Maham Shajar",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),

                const SizedBox(height: 8),

                // Profession
                const Text(
                  "Flutter Developer",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 30),

                // Email
                contactBox(
                  icon: Icons.email,
                  iconColor: Colors.purple,
                  text: "maham@example.com",
                ),

                const SizedBox(height: 15),

                // Instagram
                contactBox(
                  icon: Icons.camera_alt,
                  iconColor: Colors.pink,
                  text: "She_Cadet",
                ),

                const SizedBox(height: 15),

                // Snapchat
                contactBox(
                  icon: Icons.snapchat,
                  iconColor: Colors.amber,
                  text: "She_cadet",
                ),

                const SizedBox(height: 30),

                // Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                        const ProductListScreen(),
                      ),
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 35,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),

                  child: const Text(
                    "View Products",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Contact Box
  Widget contactBox({
    required IconData icon,
    required Color iconColor,
    required String text,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey.shade200,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 3,
            offset: Offset(0, 2),
          ),
        ],
      ),

      child: Row(
        children: [

          // Icon Circle
          CircleAvatar(
            radius: 22,
            backgroundColor: iconColor,
            child: Icon(
              icon,
              color: Colors.white,
              size: 24,
            ),
          ),

          const SizedBox(width: 20),

          // Text
          Text(
            text,
            style: const TextStyle(
              fontSize: 17,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------- PRODUCT LIST SCREEN ----------------

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  final List<Map<String, dynamic>> products = const [
    {
      "name": "Apple",
      "price": "Rs. 250",
      "icon": Icons.apple,
    },
    {
      "name": "Banana",
      "price": "Rs. 180",
      "icon": Icons.eco,
    },
    {
      "name": "Orange",
      "price": "Rs. 220",
      "icon": Icons.circle,
    },
    {
      "name": "Mango",
      "price": "Rs. 300",
      "icon": Icons.local_florist,
    },
    {
      "name": "Grapes",
      "price": "Rs. 280",
      "icon": Icons.grass,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Product List",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(18),

        itemCount: products.length,

        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 16),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),

              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),

            child: Padding(
              padding: const EdgeInsets.all(12),

              child: Row(
                children: [

                  // Product Icon
                  Container(
                    width: 58,
                    height: 58,

                    decoration: BoxDecoration(
                      color: Colors.purple.shade100,
                      shape: BoxShape.circle,
                    ),

                    child: Icon(
                      products[index]["icon"],
                      color: Colors.purple,
                      size: 28,
                    ),
                  ),

                  const SizedBox(width: 15),

                  // Product Name & Price
                  Expanded(
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [

                        Text(
                          products[index]["name"],
                          style: const TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 7),

                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),

                          decoration: BoxDecoration(
                            color: Colors.purple.shade50,
                            borderRadius:
                            BorderRadius.circular(20),
                          ),

                          child: Text(
                            products[index]["price"],
                            style: const TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Arrow Button
                  Container(
                    width: 38,
                    height: 38,

                    decoration: BoxDecoration(
                      color: Colors.purple.shade50,
                      shape: BoxShape.circle,
                    ),

                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.purple,
                      size: 16,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}