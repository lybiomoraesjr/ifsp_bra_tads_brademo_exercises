import 'package:flutter/material.dart';

class TaskSummary extends StatelessWidget {
  final int remainingTasks;

  const TaskSummary({super.key, required this.remainingTasks});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text("You have $remainingTasks uncompleted tasks"),
      ),
    );
  }
}
