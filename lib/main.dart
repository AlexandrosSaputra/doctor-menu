import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const HealthHubApp());
}

class HealthHubApp extends StatelessWidget {
  const HealthHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HealthHub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: const Color(0xFFF4F8FB),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1976D2),
        ),
      ),
      home: const HomePage(),
    );
  }
}