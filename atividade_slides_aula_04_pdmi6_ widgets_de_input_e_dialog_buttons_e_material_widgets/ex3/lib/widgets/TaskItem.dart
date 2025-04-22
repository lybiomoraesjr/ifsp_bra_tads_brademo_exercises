import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final String title;
  final bool isCompleted;
  final void Function(bool?) onChanged;

  const TaskItem({
    super.key,
    required this.title,
    required this.isCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isCompleted ? Colors.green : Colors.yellow,
      child: ListTile(
        title: Text(title),
        trailing: Checkbox(value: isCompleted, onChanged: onChanged),
      ),
    );
  }
}
