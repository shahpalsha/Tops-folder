import 'package:flutter/material.dart';

class TeenDarwaza extends StatelessWidget {
  const TeenDarwaza({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TEEN DARWAZA", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/ahmedabad_historical/teen_darwaza.png", width: double.infinity, fit: BoxFit.cover),
            SizedBox(height: 10),
            Text("Info", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
            SizedBox(height: 5),
            Text(
              "Teen Darwaza is a magnificent triple-arched gateway built by Sultan Ahmed Shah. "
                  "It served as an entrance to the Royal Square. Its historical and cultural relevance makes it a tourist attraction today.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
