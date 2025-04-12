import 'package:flutter/material.dart';

class SabarmatiAshram extends StatelessWidget {
  const SabarmatiAshram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SABARMATI ASHRAM", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/ahmedabad_historical/sabarmati_ashram.png",
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text("Info", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
            SizedBox(height: 5),
            Text(
              "Sabarmati Ashram, located on the banks of the Sabarmati River, was the residence of Mahatma Gandhi. "
                  "It was one of the main centers of the Indian freedom struggle and is now preserved as a museum "
                  "to showcase Gandhiji’s life and work.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
