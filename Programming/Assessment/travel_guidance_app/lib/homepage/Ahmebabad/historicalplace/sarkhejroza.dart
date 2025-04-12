import 'package:flutter/material.dart';

class SarkhejRoza extends StatelessWidget {
  const SarkhejRoza({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SARKHEJ ROZA", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/ahmedabad_historical/sarkhej_roza.png",
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text("Info", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
            SizedBox(height: 5),
            Text(
              "Sarkhej Roza is an elegant architectural complex featuring a mosque, tombs, and a palace. "
                  "It was built in the 15th century and is often called the 'Acropolis of Ahmedabad'. "
                  "The blend of Hindu, Jain, and Islamic styles makes it unique.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
