import 'dart:async';
import 'package:chat_app/registerpage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required String title});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Myregister(title: '')),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/gif/ss.gif',
              height: 150,
              width: 150,
              fit: BoxFit.contain,
            ),
            Text('Welcome to Chat App',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.teal.shade900),),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
