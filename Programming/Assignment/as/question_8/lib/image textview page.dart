import 'package:flutter/material.dart';

class MyImage extends StatefulWidget {
  const MyImage({super.key, required String title});

  @override
  State<MyImage> createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Textview'),
        backgroundColor: Colors.pink,
      ),
      
      body: Center(

        child: Column(

          children: [

            SizedBox(height: 90,),

            Image.asset('assets/images/dahilia.jpeg', height: 110, width: 110,),
            
            Row(
              children: [
                SizedBox(width: 30,),

                Image.asset('assets/images/daisy.jpeg', height: 110, width: 110,),

                SizedBox(width: 5,),

                Container(
                  child: Text('Flowers', style: TextStyle(fontSize: 30, color: Colors.black),),
                ),

                SizedBox(width: 5,),

                Image.asset('assets/images/lotus.jpeg', height: 110, width: 110,),
              ],
            ),

            Image.asset('assets/images/rose.jpeg', height: 110, width: 110,),
          ],
        ),
      ),
    );
  }
}
