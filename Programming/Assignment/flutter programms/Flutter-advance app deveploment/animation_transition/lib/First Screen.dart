import 'package:animation_transition/Second%20Screen.dart';
import 'package:flutter/material.dart';

class MyFirstScreen extends StatelessWidget {
  const MyFirstScreen({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Hero Animation')
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MySecondScreen()),
            );
          },
          child: Hero(
            tag: 'hero-image',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              // child: Image.network(
              //   'https://via.placeholder.com/150',
              //   width: 150,
              //   height: 150,
              //   fit: BoxFit.cover,
              // ),

              child: Image.asset(
                'assets/images/chick.jpg',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),

            ),
          ),
        ),
      ),
    );
  }
}
