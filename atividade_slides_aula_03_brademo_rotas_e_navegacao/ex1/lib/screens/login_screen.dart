import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text('Login Page')),
      body: const Center(child: LoginForm()),
    );
  }
}
