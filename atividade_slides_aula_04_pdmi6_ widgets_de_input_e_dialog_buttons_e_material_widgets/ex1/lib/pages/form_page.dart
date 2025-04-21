import 'package:flutter/material.dart';
import '../widgets/user_form.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Form Demo')),
      body: const UserForm(),
    );
  }
}