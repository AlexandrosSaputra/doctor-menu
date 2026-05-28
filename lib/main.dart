import 'package:flutter/material.dart';
import 'pages/welcome_page.dart';

void main() {
  runApp(const RuangBacaApp());
}

class RuangBacaApp extends StatelessWidget {
  const RuangBacaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RuangBaca',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: const Color(0xFFF4F8FB),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1976D2),
        ),
        useMaterial3: true,
      ),
      home: const WelcomePage(),
    );
  }
}