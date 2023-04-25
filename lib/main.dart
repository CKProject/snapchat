import 'package:flutter/material.dart';
import 'package:snapchat/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Snapchat',
      theme: ThemeData(
        primaryColor: const Color(0xFFF5F333),
        colorScheme: const ColorScheme.light(
          secondary: Color(0xFF9B59C5),
        ),
      ),
      home: const MainPage(),
    );
  }
}
