import 'package:flutter/material.dart';

class OtherPlaces extends StatefulWidget {
  const OtherPlaces({super.key});

  @override
  State<OtherPlaces> createState() => _OtherPlacesState();
}

class _OtherPlacesState extends State<OtherPlaces> {
  final List<Map<String, String>> otherPlaces = [
    {
      "title": "Gujarat Science City",
      "desc": "A science-themed educational park with interactive exhibits, planetarium, and more."
    },
    {
      "title": "Auto World Vintage Car Museum",
      "desc": "A collection of vintage and classic cars from around the world."
    },
    {
      "title": "Calico Museum of Textiles",
      "desc": "Famous museum showcasing rare textiles and artifacts of India's rich history."
    },
    {
      "title": "Indroda Nature Park",
      "desc": "Also called India's Jurassic Park, this nature park has skeletons, gardens, and a zoo."
    },
    {
      "title": "Sabarmati Riverfront",
      "desc": "A beautiful walkway and recreational space along the Sabarmati river."
    },
    {
      "title": "Heritage Walk",
      "desc": "Explore the old city of Ahmedabad on foot with guided walks through history."
    },
    {
      "title": "Parimal Garden",
      "desc": "Peaceful urban garden with walking trails and children’s play area."
    },
    {
      "title": "Law Garden",
      "desc": "Popular park area surrounded by handicraft stalls and local food vendors."
    },
    {
      "title": "Nagina Wadi",
      "desc": "An island garden with water-laser shows and scenic surroundings."
    },
    {
      "title": "Riverfront Flower Park",
      "desc": "Seasonal flower garden along the riverfront known for its beauty."
    },
    {
      "title": "Science City Planetarium",
      "desc": "An immersive dome theater exploring astronomy and space."
    },
    {
      "title": "BRTS Art Stops",
      "desc": "Art installations at BRTS bus stations showcasing local creativity."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Other Places", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: otherPlaces.map((place) {
            return Card(
              margin: EdgeInsets.only(bottom: 15),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(place['title']!,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                    SizedBox(height: 5),
                    Text(place['desc']!, style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
