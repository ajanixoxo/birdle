import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Birdle 🐦',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 40),  // just empty space between widgets

            ElevatedButton(
              onPressed: () => context.go('/auth'),  // 👈 go to auth when tapped
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}