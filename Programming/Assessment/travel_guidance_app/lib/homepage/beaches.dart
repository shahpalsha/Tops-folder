import 'package:flutter/material.dart';

class BeachesPage extends StatelessWidget {
  const BeachesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Beaches',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  'Relax by the sea and embrace the calm waves of these beautiful beaches.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 20),

            // ✅ Image Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/mum.png',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.beach_access, color: Colors.blueAccent),
                    title: Text('Goa'),
                    subtitle: Text('Famous for its lively beaches, vibrant nightlife, and water sports.'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.sunny, color: Colors.blueAccent),
                    title: Text('Andaman Islands'),
                    subtitle: Text('Known for its pristine beaches and crystal-clear water.'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.landscape, color: Colors.blueAccent),
                    title: Text('Kovalam'),
                    subtitle: Text('A serene beach known for its golden sand and calm atmosphere.'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.hotel, color: Colors.blueAccent),
                    title: Text('Varkala'),
                    subtitle: Text('A quiet and scenic beach with stunning cliffs and fresh air.'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
