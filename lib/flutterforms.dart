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

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  // GlobalKey for Form
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Form"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Form(
          key: _formKey,

          child: Column(
            children: [

              // Email field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your email";
                  }

                  if (!value.contains("@")) {
                    return "Enter a valid email";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              // Password field
              TextFormField(
                obscureText: true,

                decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your password";
                  }

                  if (value.length < 6) {
                    return "Password must be 6 characters";
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {

                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Form submitted successfully!"),
                      ),
                    );
                  }

                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}