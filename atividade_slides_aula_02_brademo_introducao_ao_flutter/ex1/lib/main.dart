import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter is fun!"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 250.0, right: 100.0),
            child: Container(
              color: Colors.orange,
              width: 120.0,
              height: 120.0,
              child: Padding(
                padding: EdgeInsets.only(top: 15, left: 15),
                child: Text("Hi, Mom!", style: TextStyle(fontSize: 20)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
