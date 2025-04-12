import 'package:flutter/material.dart';

class Hotels extends StatefulWidget {
  const Hotels({super.key});

  @override
  State<Hotels> createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hotels in Ahmedabad",
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
                    Text("The Leela Palace Ahmedabad",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("A luxury hotel offering a premium experience with world-class amenities.",
                          style: TextStyle(fontSize: 16)),
                    ),
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
                    Text("Taj Skyline Ahmedabad",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Located in the heart of the city, Taj Skyline offers an elegant stay.",
                          style: TextStyle(fontSize: 16)),
                    ),
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
                    Text("Hyatt Centric",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Modern, upscale hotel near shopping districts, offering comfort and convenience.",
                          style: TextStyle(fontSize: 16)),
                    ),
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
                    Text("Radisson Blu Hotel",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("5-star hotel with exquisite amenities and a fine-dining experience.",
                          style: TextStyle(fontSize: 16)),
                    ),
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
                    Text("The House of MG",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("A heritage hotel with traditional décor, ideal for those looking for a cultural experience.",
                          style: TextStyle(fontSize: 16)),
                    ),
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
                    Text("Courtyard by Marriott Ahmedabad",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Contemporary hotel offering a range of services like a fitness center and in-house dining.",
                          style: TextStyle(fontSize: 16)),
                    ),
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
                    Text("Novotel Ahmedabad",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Located near SG highway, Novotel offers a comfortable stay with a pool and a fitness center.",
                          style: TextStyle(fontSize: 16)),
                    ),
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
                    Text("Holiday Inn Ahmedabad",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Popular for business travelers, with conference rooms and business facilities.",
                          style: TextStyle(fontSize: 16)),
                    ),
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
                    Text("DoubleTree by Hilton Ahmedabad",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Known for its warm hospitality and luxurious services.",
                          style: TextStyle(fontSize: 16)),
                    ),
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
                    Text("Pride Plaza Hotel Ahmedabad",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Elegant hotel with spacious rooms and a full range of amenities.",
                          style: TextStyle(fontSize: 16)),
                    ),
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
                    Text("Comfort Inn Sunset",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Located in the center of the city, offering easy access to shopping and dining.",
                          style: TextStyle(fontSize: 16)),
                    ),
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
