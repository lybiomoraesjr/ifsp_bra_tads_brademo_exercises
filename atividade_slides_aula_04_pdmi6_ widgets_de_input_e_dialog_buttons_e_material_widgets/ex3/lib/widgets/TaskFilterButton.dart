import 'package:flutter/material.dart';

class TaskFilterButton extends StatelessWidget {
  final bool showOnlyCompleted;
  final VoidCallback onToggle;

  const TaskFilterButton({
    super.key,
    required this.showOnlyCompleted,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: ElevatedButton(
          onPressed: onToggle,
          child: Text(
            showOnlyCompleted ? "See All Tasks" : "See Completed Tasks",
          ),
        ),
      ),
    );
  }
}
