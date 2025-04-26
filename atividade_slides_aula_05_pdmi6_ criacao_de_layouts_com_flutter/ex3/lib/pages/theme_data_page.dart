import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme.dart';

class ThemeDataPage extends StatelessWidget {
  const ThemeDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Theme Data')),
      body: Theme(
        data: customTheme2,
        child: Container(
          color: Colors.yellow,
          alignment: Alignment.center,
          child: const Text(
            'Theme Data!',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
