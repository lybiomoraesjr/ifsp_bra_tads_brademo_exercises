import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        shape: CircleBorder(),
        child: Icon(Icons.star, color: Colors.white, size: 30),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Flutter By Example'),
      ),
      body: Center(child: FlutterLogo(size: 250)),
    );
  }
}
