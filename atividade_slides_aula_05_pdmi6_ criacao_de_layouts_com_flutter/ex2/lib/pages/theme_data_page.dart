import 'package:flutter/material.dart';

class ThemeDataPage extends StatelessWidget {
  const ThemeDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Theme Data')),
      body: Container(
        alignment: Alignment.center,
        child: const Text(
          'Theme Data!',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
