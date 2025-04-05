import 'package:flutter/material.dart';
class Australia extends StatefulWidget {
  const Australia({super.key, required String title});

  @override
  State<Australia> createState() => _ParisState();
}

class _ParisState extends State<Australia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Australia',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.deepPurple.shade600,
        ),

        body: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: 300,
              child: Image.asset("assets/images/australia.png"),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Australia is a land of stunning landscapes and vibrant cities.'
                  ' Visit Sydney Opera House, Great Barrier Reef, and Uluru for iconic '
                  'sights. Explore the National Gallery and Australian Museum for '
                  'history and culture.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Enjoy beaches at Bondi, wildlife at Kangaroo Island, and nature'
                  ' in the Blue Mountains. Experience shopping in Melbourne, food at'
                  ' Queen Victoria Market, and nightlife in Brisbane. Australia has'
                  ' something for everyone!',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
    );
  }
}
