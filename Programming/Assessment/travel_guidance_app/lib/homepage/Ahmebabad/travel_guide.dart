import 'package:flutter/material.dart';

class TravelGuide extends StatefulWidget {
  const TravelGuide({super.key});

  @override
  State<TravelGuide> createState() => _TravelGuideState();
}

class _TravelGuideState extends State<TravelGuide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Travel Guide",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Best Time to Visit",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("October to March is the ideal season with pleasant weather for exploring Ahmedabad.",
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ),

            Card(

              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Local Transport",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Use BRTS, AMTS, metro, rickshaws, or app-based cabs like Ola and Uber for easy travel.",
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ),

            Card(

              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Cultural Etiquette",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Dress modestly in religious places and remove shoes before entering temples.",
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ),

            Card(

              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Safety Tips",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Avoid isolated areas late at night, keep emergency contacts, and carry ID proof.",
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ),

            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Local Food to Try",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Don't miss khaman, fafda, dhokla, Gujarati thali, and street food at Manek Chowk.",
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ),

            Card(

              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Connectivity",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Mobile networks are reliable. Free Wi-Fi is available in many malls and cafes.",
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
