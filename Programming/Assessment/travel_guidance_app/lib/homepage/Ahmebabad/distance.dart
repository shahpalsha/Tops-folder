import 'package:flutter/material.dart';

class DistancePage extends StatefulWidget {
  const DistancePage({super.key});

  @override
  State<DistancePage> createState() => _DistancePageState();
}

class _DistancePageState extends State<DistancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Distance Between Places",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ahmedabad Railway Station to Sidi Saiyyed Mosque",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                    SizedBox(height: 5),
                    Text("Distance: 3 km | Travel Time: ~10-15 minutes by car",
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ahmedabad Railway Station to Kankaria Lake",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                    SizedBox(height: 5),
                    Text("Distance: 6 km | Travel Time: ~20-25 minutes by car",
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ahmedabad Railway Station to Sabarmati Ashram",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                    SizedBox(height: 5),
                    Text("Distance: 5 km | Travel Time: ~15-20 minutes by car",
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sidi Saiyyed Mosque to Sabarmati Ashram",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                    SizedBox(height: 5),
                    Text("Distance: 4 km | Travel Time: ~10-15 minutes by car",
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sidi Saiyyed Mosque to Kankaria Lake",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                    SizedBox(height: 5),
                    Text("Distance: 6 km | Travel Time: ~20 minutes by car",
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Kankaria Lake to Adalaj Stepwell",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                    SizedBox(height: 5),
                    Text("Distance: 17 km | Travel Time: ~30-35 minutes by car",
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sabarmati Ashram to Adalaj Stepwell",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                    SizedBox(height: 5),
                    Text("Distance: 20 km | Travel Time: ~35-40 minutes by car",
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Himalaya Mall to Vastrapur Lake",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                    SizedBox(height: 5),
                    Text("Distance: 7 km | Travel Time: ~20 minutes by car",
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Himalaya Mall to CG Road",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                    SizedBox(height: 5),
                    Text("Distance: 5 km | Travel Time: ~15-20 minutes by car",
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Kankaria Lake to Vastrapur Lake",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                    SizedBox(height: 5),
                    Text("Distance: 8 km | Travel Time: ~25 minutes by car",
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Himani Temple to Sabarmati Riverfront",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                    SizedBox(height: 5),
                    Text("Distance: 3 km | Travel Time: ~10 minutes by car",
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
