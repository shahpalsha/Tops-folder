import 'package:flutter/material.dart';

class DamsAndLakes extends StatefulWidget {
  const DamsAndLakes({super.key});

  @override
  State<DamsAndLakes> createState() => _DamsAndLakesState();
}

class _DamsAndLakesState extends State<DamsAndLakes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dams & Lakes", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/ahmedabad_dams_lake/kankaria.png", width: double.infinity, fit: BoxFit.cover),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("Kankaria Lake", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text("A historic lake with gardens, zoo, toy train, and recreational activities, perfect for family outings.", style: TextStyle(fontSize: 16)),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/ahmedabad_dams_lake/thol.png", width: double.infinity, fit: BoxFit.cover),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("Thol Lake", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text("A serene bird sanctuary and lake ideal for bird watching and peaceful nature visits.", style: TextStyle(fontSize: 16)),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/ahmedabad_dams_lake/vstrapur.png", width: double.infinity, fit: BoxFit.cover),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("Vastrapur Lake", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text("A well-maintained urban lake with walking paths, amphitheatre, and musical fountain shows.", style: TextStyle(fontSize: 16)),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
