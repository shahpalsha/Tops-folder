import 'package:flutter/material.dart';
class Singapore extends StatefulWidget {
  const Singapore({super.key, required String title});

  @override
  State<Singapore> createState() => _ParisState();
}

class _ParisState extends State<Singapore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Singapore',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.deepPurple.shade600,
        ),

        body: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: 300,
              child: Image.asset("assets/images/singapor.png"),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Singapore is a modern city with stunning sights. Visit Marina Bay Sands,'
                  'Merlion Park and the Singapore Flyer for amazing views. Explore the '
                  'National Museum and ArtScience Museum** for culture and history.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(' Enjoy shopping at **Orchard Road, street food at '
              'Lau Pa Sat and nature at Gardens by the Bay.'
               'Experience nightlife at Clarke Quay and relax on Sentosa Island.'
               ' Singapore has it all!',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
    );
  }
}
