import 'package:dsa/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final String title;
  final Widget child;
  final Widget? floatingActionButton;
  final int selectedIndex;
  final void Function(int) onTabSelected;

  const MainLayout({
    super.key,
    required this.title,
    required this.child,
    this.floatingActionButton,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: const TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(
        selectedIndex: selectedIndex,
        onTabSelected: onTabSelected,
      ),
      body: child,
    );
  }
}
