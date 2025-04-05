import 'dart:async';
import 'package:flutter/material.dart';
import 'package:assesment_first/Login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required String title});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginPage(title: 'Login')),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.book_rounded,
              size: 100,
              color: Colors.deepPurple.shade800,
            ),
            SizedBox(height: 20),
            Text(
              'My Notebook',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple.shade900,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Collect ideas, thoughts & plans',
              style: TextStyle(
                fontSize: 16,
                color: Colors.deepPurple.shade600,
              ),
            ),
            SizedBox(height: 30),
            CircularProgressIndicator(
              color: Colors.deepPurple.shade700,
            ),
          ],
        ),
      ),
    );
  }
}






