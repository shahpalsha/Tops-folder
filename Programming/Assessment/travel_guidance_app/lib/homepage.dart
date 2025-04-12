import 'package:auto_scroll_slider/auto_scroll_slider.dart';
import 'package:flutter/material.dart';
import 'package:travel_guidance_app/homepage/ahmedabad.dart';
import 'package:travel_guidance_app/homepage/beaches.dart';
import 'package:travel_guidance_app/homepage/culture.dart';
import 'package:travel_guidance_app/homepage/heritage.dart';
import 'package:travel_guidance_app/homepage/mountains.dart';
import 'drawer.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key, required this.title});

  final String title;

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  final scrollController = ScrollController();

  final tvl_img = [
    'darjeeling.png',
    'agra.png',
    'kerala.jpg',
    'bengalore.png',
    'amd.png',
    'delhi.png',
    'mum.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Guidance',
            style: TextStyle(fontSize: 25, color: Colors.white)),
        backgroundColor: Colors.blueAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  '“Travel is the only thing you buy that makes you richer.”',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 250,
              child: AutoScrollSlider(
                length: tvl_img.length,
                scrollController: scrollController,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: Image.asset(
                      'assets/images/${tvl_img[index]}',
                      height: 250,
                      width: 400,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Text('Image failed to load');
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 40),

            // First row: Mountains & Beaches
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MountainsPage(),));
                    },
                    child: Column(
                    children: [
                      Icon(Icons.terrain, size: 50, color: Colors.blueAccent),
                      SizedBox(height: 8),
                      Text("Mountains",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BeachesPage(),));
                    },
                  child: Column(
                    children: [
                      Icon(Icons.beach_access,
                          size: 50, color: Colors.blueAccent),
                      SizedBox(height: 8),
                      Text("Beaches",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HeritagePage(),));
                    },
                  child: Column(
                    children: [
                      Icon(Icons.account_balance,
                          size: 50, color: Colors.blueAccent),
                      SizedBox(height: 8),
                      Text("Heritage",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AhmedabadCulture(),));
                    },
                  child: Column(
                    children: [
                      Icon(Icons.art_track,
                          size: 50, color: Colors.blueAccent),
                      SizedBox(height: 8),
                      Text("Culture",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 50),

            // Ahmedabad section
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Myahmedabad()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on, color: Colors.blueAccent, size: 28),
                      SizedBox(width: 10),
                      Text(
                        'Explore Ahmedabad',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
