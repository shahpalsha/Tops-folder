import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SpinKitFadingCircle(
          color: Colors.blue,
          size: 50.0,
          duration: Duration(seconds: 5),
        ),
      ),
    );
  }
}
