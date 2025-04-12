import 'package:flutter/material.dart';

class PlacesToSeeAround extends StatefulWidget {
  const PlacesToSeeAround({super.key});

  @override
  State<PlacesToSeeAround> createState() => _PlacesToSeeAroundState();
}

class _PlacesToSeeAroundState extends State<PlacesToSeeAround> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Places to See Around", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
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
                    Text("Modhera Sun Temple", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                    SizedBox(height: 5),
                    Text("Located about 100 km from Ahmedabad, this ancient temple is dedicated to the Sun God and is a must-visit for history lovers.", style: TextStyle(fontSize: 16)),
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
                    Text("Nal Sarovar Bird Sanctuary", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                    SizedBox(height: 5),
                    Text("A perfect spot for bird watching and boating, located around 60 km from Ahmedabad.", style: TextStyle(fontSize: 16)),
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
                    Text("Lothal", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                    SizedBox(height: 5),
                    Text("One of the most important cities of the ancient Indus Valley Civilization, located around 80 km from Ahmedabad.", style: TextStyle(fontSize: 16)),
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
                    Text("Auto World Vintage Car Museum", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                    SizedBox(height: 5),
                    Text("Located in Kathwada, it features a rare and extensive collection of vintage cars and royal vehicles.", style: TextStyle(fontSize: 16)),
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
                    Text("Indroda Nature Park", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                    SizedBox(height: 5),
                    Text("Located near Gandhinagar, it's a great picnic spot with wildlife, botanical gardens, and a dinosaur museum.", style: TextStyle(fontSize: 16)),
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
                    Text("Science City", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                    SizedBox(height: 5),
                    Text("A futuristic space in Ahmedabad with interactive science exhibits, robotics, energy park, and IMAX dome.", style: TextStyle(fontSize: 16)),
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
                    Text("Trimandir, Adalaj", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                    SizedBox(height: 5),
                    Text("A spiritual temple combining elements from Jainism, Shaivism, and Vaishnavism.", style: TextStyle(fontSize: 16)),
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
                    Text("Lalbhai Dalpatbhai Museum", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                    SizedBox(height: 5),
                    Text("Known for its rare collection of manuscripts, ancient art, and sculptures.", style: TextStyle(fontSize: 16)),
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
                    Text("Craftsmen’s Village (Pethapur)", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                    SizedBox(height: 5),
                    Text("Famous for wooden block printing used in traditional textiles.", style: TextStyle(fontSize: 16)),
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
                    Text("Polo Forest", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                    SizedBox(height: 5),
                    Text("A scenic and historic site, about 150 km away, ideal for trekking and nature photography.", style: TextStyle(fontSize: 16)),
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
                    Text("Statue of Unity", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                    SizedBox(height: 5),
                    Text("The world's tallest statue near Kevadia, surrounded by gardens and Sardar Sarovar Dam.", style: TextStyle(fontSize: 16)),
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
                    Text("Champaner-Pavagadh", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                    SizedBox(height: 5),
                    Text("UNESCO heritage site with forts, temples, and mosques near Vadodara, 150 km away.", style: TextStyle(fontSize: 16)),
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
