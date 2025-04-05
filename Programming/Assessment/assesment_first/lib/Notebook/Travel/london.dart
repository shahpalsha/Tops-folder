import 'package:flutter/material.dart';
class London extends StatefulWidget {
  const London({super.key});

  @override
  State<London> createState() => _LondonState();
}

class _LondonState extends State<London> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('London',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.deepPurple.shade600,
        ),

        body: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: 300,
              child: Image.asset("assets/images/london.png"),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('London is a city of history and culture. Visit the Tower of London, '
                  'Buckingham Palace, and the London Eye for iconic sights.'
                  ' Explore the British Museum and National Gallery for art and history.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Beyond landmarks, enjoy Camden Market, Borough Market, '
                 ' and Hyde Park. Experience West End shows, live music, and '
                  'rooftop bars. London has something for everyone.',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
    );
  }
}

