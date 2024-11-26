import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LongPressExample(),
    );
  }
}

class LongPressExample extends StatefulWidget {
  @override
  _LongPressExampleState createState() => _LongPressExampleState();
}

class _LongPressExampleState extends State<LongPressExample> {
  Color _containerColor = Colors.orange;

  void _onLongPress() {
    setState(() {
      // Toggle color between orange and purple on long press
      _containerColor =
          _containerColor == Colors.orange ? Colors.purple : Colors.orange;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Long Press Gesture Example"),
      ),
      body: Center(
        child: GestureDetector(
          onLongPress: _onLongPress,
          child: Container(
            height: 150,
            width: 150,
            color: _containerColor,
            alignment: Alignment.center,
            child: Text(
              "Long Press Me",
              style: TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
