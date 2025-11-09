import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/splash1.png', height: size.height * 0.25),
              const SizedBox(height: 20),
              TextField(decoration: const InputDecoration(labelText: 'Email')),
              const SizedBox(height: 12),
              TextField(obscureText: true, decoration: const InputDecoration(labelText: 'Password')),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/signup'),
                child: const Text('Create Account'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(8),
        child: Text('NIM: 1123150116', textAlign: TextAlign.center),
      ),
    );
  }
}