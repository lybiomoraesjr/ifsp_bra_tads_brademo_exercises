import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/InfoDialog.dart';
import 'package:flutter_application_1/widgets/TaskFilterButton.dart';
import 'package:flutter_application_1/widgets/TaskItem.dart';
import 'package:flutter_application_1/widgets/TaskSummary.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  final List<bool> _isCheckedList = List.generate(5, (_) => false);
  bool _showOnlyCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task List"), backgroundColor: Colors.blue),
      body: Column(
        children: [
          TaskFilterButton(
            showOnlyCompleted: _showOnlyCompleted,
            onToggle: () {
              setState(() {
                _showOnlyCompleted = !_showOnlyCompleted;
              });
            },
          ),
          TaskSummary(remainingTasks: _isCheckedList.where((e) => !e).length),
          Expanded(
            child: ListView.builder(
              itemCount: _isCheckedList.length,
              itemBuilder: (context, index) {
                if (_showOnlyCompleted && !_isCheckedList[index]) {
                  return SizedBox.shrink();
                }
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 4.0,
                  ),
                  child: TaskItem(
                    title: "Task $index",
                    isCompleted: _isCheckedList[index],
                    onChanged: (value) {
                      setState(() {
                        _isCheckedList[index] = value!;
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(context: context, builder: (_) => const InfoDialog());
        },
        backgroundColor: Colors.blue,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
