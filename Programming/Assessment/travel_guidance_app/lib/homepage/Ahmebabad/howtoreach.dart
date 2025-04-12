import 'package:flutter/material.dart';

class Howtoreach extends StatefulWidget {
  const Howtoreach({super.key});

  @override
  State<Howtoreach> createState() => _HowtoreachState();
}

class _HowtoreachState extends State<Howtoreach> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'How to Reach',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 20),

            Text("✈️ By Air", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 5),
            Text("Ahmedabad has an international airport called Sardar Vallabhbhai Patel International Airport, well-connected to major Indian cities and international destinations."),
            SizedBox(height: 16),

            Text("🚆 By Train", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 5),
            Text("Ahmedabad Junction (ADI) is a major railway station with trains from all over India including Delhi, Mumbai, Kolkata, and Chennai."),
            SizedBox(height: 16),

            Text("🚌 By Road", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 5),
            Text("Ahmedabad is well connected via national highways. You can drive or take government/private buses from nearby cities like Surat, Vadodara, Udaipur, and Mumbai."),
            SizedBox(height: 16),

            Text("🚖 Local Transport", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 5),
            Text("Auto-rickshaws, taxis, city buses, and metro rail are available for local travel within the city."),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
