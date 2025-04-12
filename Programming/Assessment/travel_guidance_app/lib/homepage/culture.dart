import 'package:flutter/material.dart';

class AhmedabadCulture extends StatelessWidget {
  const AhmedabadCulture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ahmedabad Culture',
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
                  'Ahmedabad reflects a vibrant mix of tradition and progress. From colorful Navratri celebrations to soulful folk music, the city embraces its roots through food, dance, and local art.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 30),


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/cul.png', // Replace with your image path
                  width: double.infinity,
                  height: 340,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.festival, color: Colors.blueAccent),
                    title: Text('Navratri Garba'),
                    subtitle: Text('Nine nights of dance, music, and devotion across the city.'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.food_bank, color: Colors.blueAccent),
                    title: Text('Traditional Cuisine'),
                    subtitle: Text('Famous for Gujarati thali, farsan, and sweets.'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.handshake, color: Colors.blueAccent),
                    title: Text('Local Handicrafts'),
                    subtitle: Text('Bandhani, wooden crafts, and mirror work from local artisans.'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.music_note, color: Colors.blueAccent),
                    title: Text('Folk Music & Arts'),
                    subtitle: Text('Folk songs and instruments deeply rooted in culture.'),
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
