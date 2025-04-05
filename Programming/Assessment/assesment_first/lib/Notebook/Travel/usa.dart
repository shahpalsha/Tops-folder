import 'package:flutter/material.dart';
class USA extends StatefulWidget {
  const USA({super.key, required String title});

  @override
  State<USA> createState() => _ParisState();
}

class _ParisState extends State<USA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('USA',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.deepPurple.shade600,
        ),

        body: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: 300,
              child: Image.asset("assets/images/usa.png"),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('The USA is a country of iconic landmarks and diverse attractions.'
                  ' Visit the Statue of Liberty, Grand Canyon, and Golden Gate Bridge'
                  ' for unforgettable sights. Explore the Smithsonian Museums and'
                  ' Metropolitan Museum of Art for history and culture',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Enjoy beaches in Miami, entertainment in Las Vegas, and nature '
                  'in Yellowstone National Park. Experience shopping in New York,'
                  ' food in New Orleans, and theme parks in Orlando. The USA has'
                  ' something for everyone!',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
    );
  }
}
