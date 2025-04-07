import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/login.dart';
import 'package:flutter_application_1/widgets/custom_text_field.dart';
import 'package:flutter_application_1/widgets/flutter_logo.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleLogin() {
    final login = Login(
      email: _emailController.text,
      password: _passwordController.text,
    );

    login.auth(context);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const FlutterLogoLogin(),
                  const SizedBox(height: 32),
                  CustomTextField(label: "Email", controller: _emailController),
                  const SizedBox(height: 16),
                  CustomTextField(
                    label: "Senha",
                    isPassword: true,
                    controller: _passwordController,
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Forgot Password"),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: _handleLogin,
                      child: const Text("Login"),
                    ),
                  ),
                ],
              ),

              TextButton(
                onPressed: () {},
                child: const Text("New User? Create Account"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
