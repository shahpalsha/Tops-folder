import 'package:flutter/material.dart';

class AdalajStepwell extends StatelessWidget {
  const AdalajStepwell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ADALAJ STEPWELL", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/ahmedabad_historical/adalaj_stepwell.png"),
            SizedBox(height: 10),
            Text("Info", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
            SizedBox(height: 5),
            Text(
              "Adalaj Stepwell is a five-story deep stepwell built in 1499 by Queen Rudabai. "
                  "This architectural marvel was built to provide water and shelter. "
                  "It features beautifully carved pillars and intricate motifs.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
