import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme.dart';
import 'package:flutter_application_1/pages/responsive_layout_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercise 4',
      theme: customTheme,
      home: ResponsiveLayoutPage(),
    );
  }
}
