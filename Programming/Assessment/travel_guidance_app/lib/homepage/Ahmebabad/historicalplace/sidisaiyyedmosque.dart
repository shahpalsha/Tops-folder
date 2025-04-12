import 'package:flutter/material.dart';

class SidiSaiyyedMosque extends StatelessWidget {
  const SidiSaiyyedMosque({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SIDI SAIYYED MOSQUE", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/ahmedabad_historical/sidisaiyyedmosque.png", width: double.infinity, fit: BoxFit.cover),
            SizedBox(height: 10),
            Text("Info", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
            SizedBox(height: 5),
            Text(
              "Famous for its stone lattice work, the Sidi Saiyyed Mosque was built in 1573. "
                  "The iconic tree of life jali has become a symbol of Ahmedabad and is admired for its craftsmanship.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
