import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up')),
        body: Padding(
          padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(decoration: const InputDecoration(labelText: 'Full Name')),
              const SizedBox(height: 12),
              TextField(decoration: const InputDecoration(labelText: 'Email')),
              const SizedBox(height: 12),
              TextField(decoration: const InputDecoration(labelText: 'Phone')),
              const SizedBox(height: 12),
              TextField(obscureText:true, decoration: const InputDecoration(labelText: 'Password')),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Sign Up'),
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