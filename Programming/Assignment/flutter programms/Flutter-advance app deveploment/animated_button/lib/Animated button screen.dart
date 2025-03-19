import 'package:flutter/material.dart';

class AnimatedButtonScreen extends StatefulWidget {
  @override
  _AnimatedButtonScreenState createState() => _AnimatedButtonScreenState();
}

class _AnimatedButtonScreenState extends State<AnimatedButtonScreen> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Button")),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          width: _isExpanded ? 200 : 100,
          height: 50,
          decoration: BoxDecoration(
            color: _isExpanded ? Colors.blue : Colors.red,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextButton(
            onPressed: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Text(
              "Press Me",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
