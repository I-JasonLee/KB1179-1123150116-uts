import 'package:flutter/material.dart';
import 'screens/splash.dart';
import 'screens/signin.dart';
import 'screens/signup.dart';
import 'screens/otp.dart';
import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    const nim = 1123150116;
    final seedColor = Colors.cyan; // 1123150116

    return MaterialApp(
      title: 'UTS Kb1179-1123150116',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: seedColor),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/signin': (context) => const SignInScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/otp': (context) => const OtpScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}