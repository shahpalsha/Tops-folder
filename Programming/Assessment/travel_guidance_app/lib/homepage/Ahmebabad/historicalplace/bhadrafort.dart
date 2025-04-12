import 'package:flutter/material.dart';

class BhadraFort extends StatelessWidget {
  const BhadraFort({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BHADRA FORT", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/ahmedabad_historical/bhadra_fort.png", width: double.infinity, fit: BoxFit.cover),
            SizedBox(height: 10),
            Text("Info", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
            SizedBox(height: 5),
            Text(
              "Bhadra Fort was built in 1411 by Ahmed Shah I. It houses a palace, a mosque, and an open area known as Maidan-Shah. "
                  "The fort has a legendary charm and stands as a symbol of Ahmedabad's royal heritage.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
