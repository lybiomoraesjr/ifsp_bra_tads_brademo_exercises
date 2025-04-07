import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

class Login {
  final String _email;
  final String _password;

  Login({required String email, required String password})
    : _email = email,
      _password = password;

  String get email => _email;
  String get password => _password;

  void auth(BuildContext context) {
    if (_email != 'admin' || _password != '1234') {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Invalid email or password',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }
}
