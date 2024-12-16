import 'package:flutter/material.dart';
import 'package:multiple_screen_assignment/Product List.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.orange.shade400,
      ),

      body: Center(
        child:
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyProductList()));
              },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('Click to show product list', style: TextStyle(fontSize: 25),),
                )),
          ),
      ),
    );
  }
}
