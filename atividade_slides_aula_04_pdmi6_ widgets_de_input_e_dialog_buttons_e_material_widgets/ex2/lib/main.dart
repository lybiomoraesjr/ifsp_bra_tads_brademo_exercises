import 'package:dsa/constants/theme.dart';
import 'package:dsa/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom App Bar',
      theme: customTheme,
      home: HomePage(),
    );
  }
}
