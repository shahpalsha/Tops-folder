import 'package:flutter/material.dart';
class Canada extends StatefulWidget {
  const Canada({super.key, required String title});

  @override
  State<Canada> createState() => _ParisState();
}

class _ParisState extends State<Canada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Canada',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.deepPurple.shade600,
        ),

        body: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: 300,
              child: Image.asset("assets/images/canada.png"),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Canada is a country of breathtaking nature and lively cities. '
                  'Visit Niagara Falls, CN Tower, and Banff National Park for'
                  ' stunning views. Explore the Royal Ontario Museum and Canadian '
                  'Museum of History for culture and heritage.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Enjoy skiing in Whistler, nature in Jasper National Park, and '
                  'city life in Toronto and Vancouver. Experience food at St.'
                  ' Lawrence Market, festivals in Montreal, and Northern Lights '
                  'in Yukon. Canada has it all!',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
    );
  }
}
