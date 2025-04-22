import 'package:flutter/material.dart';

class InfoDialog extends StatelessWidget {
  const InfoDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Warning!"),
      content: Text("You are in the Task Notes App."),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text("Ok"),
        ),
      ],
    );
  }
}
