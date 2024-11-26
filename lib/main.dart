import 'package:flutter/material.dart';
import 'swipegesture.dart';
import 'longpress.dart';
import 'profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class DoubleTapExample extends StatefulWidget {
  @override
  _DoubleTapExampleState createState() => _DoubleTapExampleState();
}

class _DoubleTapExampleState extends State<DoubleTapExample> {
  Color _containerColor = Colors.green;

  void _changeColor() {
    setState(() {
      _containerColor =
          _containerColor == Colors.green ? Colors.blue : Colors.green;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Double-Tap Gesture Example"),
      ),
      body: Center(
        child: GestureDetector(
          onDoubleTap: _changeColor,
          child: Container(
            height: 150,
            width: 150,
            color: _containerColor,
            alignment: Alignment.center,
            child: Text(
              "Double Tap Me",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
