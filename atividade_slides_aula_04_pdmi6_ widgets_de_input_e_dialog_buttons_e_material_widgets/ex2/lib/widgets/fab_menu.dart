import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class FabMenu extends StatelessWidget {
  final void Function(int index) onSelected;

  const FabMenu({super.key, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      icon: Icons.add,
      activeIcon: Icons.close,
      backgroundColor: Colors.blue,
      iconTheme: const IconThemeData(color: Colors.white),
      spacing: 20,
      children: [
        SpeedDialChild(
          backgroundColor: Colors.white,
          child: const Icon(Icons.phone, color: Colors.blue),
          shape: const CircleBorder(),
          onTap: () => onSelected(0),
        ),
        SpeedDialChild(
          backgroundColor: Colors.white,
          child: const Icon(Icons.email, color: Colors.blue),
          shape: const CircleBorder(),
          onTap: () => onSelected(1),
        ),
        SpeedDialChild(
          backgroundColor: Colors.white,
          child: const Icon(Icons.message, color: Colors.blue),
          shape: const CircleBorder(),
          onTap: () => onSelected(2),
        ),
      ],
    );
  }
}