import 'package:flutter/material.dart';

class DevotionalPlaces extends StatefulWidget {
  const DevotionalPlaces({super.key});

  @override
  State<DevotionalPlaces> createState() => _DevotionalPlacesState();
}

class _DevotionalPlacesState extends State<DevotionalPlaces> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Devotional Places", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/ahmedabad_devotional/jagnnath_temple.png", width: double.infinity, fit: BoxFit.cover),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Jagannath Temple", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                        SizedBox(height: 5),
                        Text("One of the oldest and most famous temples in Ahmedabad, known for the annual Rath Yatra.", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),

            Card(
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/ahmedabad_devotional/swaminarayan.png", width: double.infinity, fit: BoxFit.cover),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Swaminarayan Mandir Kalupur", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                        SizedBox(height: 5),
                        Text("A stunning temple built in 1822, known for its wooden carvings and spiritual significance.", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),

            Card(
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/ahmedabad_devotional/iskcon.png", width: double.infinity, fit: BoxFit.cover),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ISCON Temple", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                        SizedBox(height: 5),
                        Text("Dedicated to Lord Krishna and Radha, ISKCON temple is a peaceful spiritual center.", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),

            Card(
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/ahmedabad_devotional/vaishno_devi.png", width: double.infinity, fit: BoxFit.cover),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Vaishnodevi Temple", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                        SizedBox(height: 5),
                        Text("Replica of the famous Vaishnodevi Temple in Jammu, located on SG Highway.", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),

            Card(
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/ahmedabad_devotional/jain.png", width: double.infinity, fit: BoxFit.cover),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hutheesing Jain Temple", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                        SizedBox(height: 5),
                        Text("Built in 1848, this beautiful Jain temple is dedicated to the 15th Tirthankara, Dharmanath.", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),

            Card(
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/ahmedabad_devotional/hanuman.png", width: double.infinity, fit: BoxFit.cover),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hanuman Camp Temple", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                        SizedBox(height: 5),
                        Text("A popular Hanuman temple known for large gatherings, especially on Saturdays.", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),

            // Akshardham Mandir
            Card(
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/ahmedabad_devotional/akshardham.png", width: double.infinity, fit: BoxFit.cover),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Akshardham Mandir", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                        SizedBox(height: 5),
                        Text("Located in Gandhinagar near Ahmedabad, Akshardham is a grand temple complex known for spiritual exhibitions and architecture.", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
