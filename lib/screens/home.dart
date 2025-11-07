import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome Home!',
              style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => Navigator.pushReplacementNamed(context, '/signin'),
                child: const Text('Logout'),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const Padding(
          padding: EdgeInsets.all(8),
          child: Text('NIM: 1123150116', textAlign: TextAlign.center),
        ),
    );
  }
}