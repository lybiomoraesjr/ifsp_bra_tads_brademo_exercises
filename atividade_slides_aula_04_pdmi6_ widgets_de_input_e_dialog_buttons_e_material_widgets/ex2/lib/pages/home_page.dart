import 'package:dsa/layouts/main_layout.dart';
import 'package:flutter/material.dart';
import '../widgets/fab_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedTab = 0;
  int? _selectedFab;

  void _onTabSelected(int index) {
    setState(() {
      _selectedTab = index;
      _selectedFab = null;
    });
  }

  void _onFabSelected(int index) {
    setState(() {
      _selectedFab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'BottomAppBar with FAB',
      selectedIndex: _selectedTab,
      onTabSelected: _onTabSelected,
      floatingActionButton: FabMenu(onSelected: _onFabSelected),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _selectedFab != null
                  ? 'FAB: $_selectedFab'
                  : 'TAB: $_selectedTab',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
