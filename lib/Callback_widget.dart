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
      home: const LoginPage(),
    );
  }
}

// ---------------- LOGIN PAGE ----------------

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String email = "";
  String password = "";

  // Parent ka function
  void handleLogin(String userEmail, String userPassword) {
    setState(() {
      email = userEmail;
      password = userPassword;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Welcome! Login attempted with $userEmail",
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "My Account",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),

        child: Column(
          children: [

            const SizedBox(height: 30),

            // Logo
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade100,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.person,
                size: 60,
                color: Colors.deepPurple,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              "Login to continue",
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),

            const SizedBox(height: 35),

            // Custom Login Form
            LoginForm(
              onLogin: handleLogin,
            ),

            const SizedBox(height: 20),

            Text(
              email.isEmpty
                  ? "No login attempt yet"
                  : "Last Email: $email",
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// ---------------- CUSTOM LOGIN FORM ----------------

class LoginForm extends StatefulWidget {

  // Function callback with 2 parameters
  final Function(String, String) onLogin;

  const LoginForm({
    super.key,
    required this.onLogin,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool showPassword = false;

  void login() {

    String email = emailController.text;
    String password = passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please fill all fields"),
        ),
      );

      return;
    }

    // Callback call
    widget.onLogin(email, password);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // Email
        TextField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: "Email",
            hintText: "Enter your email",
            prefixIcon: const Icon(Icons.email),
            filled: true,
            fillColor: Colors.white,

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),

        const SizedBox(height: 18),

        // Password
        TextField(
          controller: passwordController,
          obscureText: !showPassword,

          decoration: InputDecoration(
            labelText: "Password",
            hintText: "Enter your password",

            prefixIcon: const Icon(Icons.lock),

            suffixIcon: IconButton(
              icon: Icon(
                showPassword
                    ? Icons.visibility
                    : Icons.visibility_off,
              ),

              onPressed: () {
                setState(() {
                  showPassword = !showPassword;
                });
              },
            ),

            filled: true,
            fillColor: Colors.white,

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),

        const SizedBox(height: 25),

        // Custom Button
        SizedBox(
          width: double.infinity,
          height: 55,

          child: ElevatedButton(
            onPressed: login,

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),

            child: const Text(
              "LOGIN",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}