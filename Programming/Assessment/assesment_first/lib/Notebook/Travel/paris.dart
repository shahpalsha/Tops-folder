import 'package:flutter/material.dart';
class Paris extends StatefulWidget {
  const Paris({super.key, required String title});

  @override
  State<Paris> createState() => _ParisState();
}

class _ParisState extends State<Paris> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Paris',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.deepPurple.shade600,
        ),

        body: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: 300,
              child: Image.asset("assets/images/paris.png"),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Paris is the home of the most visited art museum in the world, the Louvre, "
                  "as well as the Musée d'Orsay, noted for its collection of French Impressionist "
                  "art, and the Musée National d'Art Moderne, a museum of modern and contemporary art.",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("The notable architectural landmarks of Paris include Notre Dame Cathedral (12th century), "
                  "the Sainte-Chapelle (13th century), the Eiffel Tower (1889), and the Basilica of "
                  "Sacré-Coeur on Montmartre (1914). In 2014, Paris received 22.4 million visitors, making it "
                  "one of the world’s top tourist destinations.",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
    );
  }
}
