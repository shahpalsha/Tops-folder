import 'package:flutter/material.dart';

class MountainsPage extends StatelessWidget {
  const MountainsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mountains',
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
                  'Explore the serenity of mountains — where nature whispers peace and adventure awaits at every turn.',
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
                  'assets/images/darjeeling.png',
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
                    leading: Icon(Icons.terrain, color: Colors.blueAccent),
                    title: Text('Himalayas'),
                    subtitle: Text('The crown of India with snow-capped peaks and spiritual vibes.'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.landscape, color: Colors.blueAccent),
                    title: Text('Western Ghats'),
                    subtitle: Text('Lush greenery, wildlife, and pleasant weather year-round.'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.hiking, color: Colors.blueAccent),
                    title: Text('Trekking Adventures'),
                    subtitle: Text('Perfect trails for beginners and pros in various mountain ranges.'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.hotel, color: Colors.blueAccent),
                    title: Text('Hill Station Retreats'),
                    subtitle: Text('Escape to calm places like Manali, Ooty, and Munnar.'),
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
