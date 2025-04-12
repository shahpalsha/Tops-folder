import 'package:flutter/material.dart';

class JamaMasjid extends StatelessWidget {
  const JamaMasjid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JAMA MASJID", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/ahmedabad_historical/jama_masjid.png", width: double.infinity, fit: BoxFit.cover),
            SizedBox(height: 10),
            Text("Info", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
            SizedBox(height: 5),
            Text(
              "Built in 1424 during the reign of Ahmed Shah I, Jama Masjid is one of the most splendid mosques in India. "
                  "It reflects Indo-Islamic architecture with intricate carvings and beautifully designed arches.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
