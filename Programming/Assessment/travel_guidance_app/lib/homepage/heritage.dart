import 'package:flutter/material.dart';

class HeritagePage extends StatelessWidget {
  const HeritagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Heritage',
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
                  'Explore India’s rich history through its beautiful heritage sites, temples, and monuments.',
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
                  'assets/images/agra.png',
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
                    leading: Icon(Icons.account_balance, color: Colors.blueAccent),
                    title: Text('Taj Mahal'),
                    subtitle: Text('An iconic symbol of love, this white marble mausoleum is a UNESCO World Heritage Site.'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.history, color: Colors.blueAccent),
                    title: Text('Qutub Minar'),
                    subtitle: Text('A stunning example of Indo-Islamic Afghan architecture in Delhi.'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.account_balance, color: Colors.blueAccent),
                    title: Text('Red Fort'),
                    subtitle: Text('A historic fort complex and UNESCO World Heritage Site located in Delhi.'),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.house, color: Colors.blueAccent),
                    title: Text('Khajuraho Temples'),
                    subtitle: Text('Famous for their intricate sculptures and architectural brilliance.'),
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
