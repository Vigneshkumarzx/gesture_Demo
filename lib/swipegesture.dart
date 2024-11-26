import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SwipeGestureExample(),
    );
  }
}

class SwipeGestureExample extends StatefulWidget {
  @override
  _SwipeGestureExampleState createState() => _SwipeGestureExampleState();
}

class _SwipeGestureExampleState extends State<SwipeGestureExample> {
  String _swipeDirection = "Swipe in any direction";

  void _onHorizontalDrag(DragUpdateDetails details) {
    setState(() {
      if (details.primaryDelta! > 0) {
        _swipeDirection = "Swiped Right";
      } else {
        _swipeDirection = "Swiped Left";
      }
    });
  }

  void _onVerticalDrag(DragUpdateDetails details) {
    setState(() {
      if (details.primaryDelta! > 0) {
        _swipeDirection = "Swiped Down";
      } else {
        _swipeDirection = "Swiped Up";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Swipe Gesture Example"),
      ),
      body: Center(
        child: GestureDetector(
          onHorizontalDragUpdate: _onHorizontalDrag,
          onVerticalDragUpdate: _onVerticalDrag,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.red,
            alignment: Alignment.center,
            child: Text(
              _swipeDirection,
              style: TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
