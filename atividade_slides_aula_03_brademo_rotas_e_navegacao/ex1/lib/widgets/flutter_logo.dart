import 'package:flutter/material.dart';

class FlutterLogoLogin extends StatelessWidget {
  const FlutterLogoLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        FlutterLogo(size: 60),
        SizedBox(width: 8),
        Text(
          'Flutter',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w300,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}