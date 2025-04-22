import 'package:flutter/material.dart';

class DatePickerField extends StatelessWidget {
  final TextEditingController controller;
  final void Function() onTap;

  const DatePickerField({
    super.key,
    required this.controller,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: true,
      onTap: onTap,
      decoration: const InputDecoration(
        labelText: 'DOB',
        prefixIcon: Icon(Icons.calendar_today),
      ),
      validator: (value) => value!.isEmpty ? 'Enter your DOB' : null,
    );
  }
}