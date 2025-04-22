import 'package:dsa/models/ui/bottom_bar_item.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;

  const BottomBar({
    super.key,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  static const double _height = 60.0;
  static const double _iconSize = 24.0;
  static const Color _backgroundColor = Colors.white;
  static const Color _color = Colors.grey;
  static const Color _selectedColor = Colors.red;
  
  static final List<BottomBarItem> _items = [
    BottomBarItem(icon: Icons.menu, text: 'This'),
    BottomBarItem(icon: Icons.layers, text: 'Is'),
    BottomBarItem(icon: Icons.dashboard, text: 'Bottom'),
    BottomBarItem(icon: Icons.info, text: 'Bar'),
  ];

  @override
  Widget build(BuildContext context) {
    final tabs = List.generate(_items.length, (index) {
      return _buildTabItem(item: _items[index], index: index);
    });

    tabs.insert(tabs.length >> 1, _buildMiddleSpace());

    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: _backgroundColor,
      elevation: 8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: tabs,
      ),
    );
  }

  Widget _buildMiddleSpace() {
    return const Expanded(
      child: SizedBox(height: _height),
    );
  }

  Widget _buildTabItem({required BottomBarItem item, required int index}) {
    final currentColor = selectedIndex == index ? _selectedColor : _color;

    return Expanded(
      child: InkWell(
        onTap: () => onTabSelected(index),
        child: SizedBox(
          height: _height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(item.icon, color: currentColor, size: _iconSize),
              Text(item.text, style: TextStyle(color: currentColor)),
            ],
          ),
        ),
      ),
    );
  }
}
