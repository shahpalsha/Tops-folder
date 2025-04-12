import 'package:flutter/material.dart';
import 'historicalplace/sabarmatiashram.dart';
import 'historicalplace/jamamasjid.dart';
import 'historicalplace/adalajstepwell.dart';
import 'historicalplace/bhadrafort.dart';
import 'historicalplace/sarkhejroza.dart';
import 'historicalplace/sidisaiyyedmosque.dart';
import 'historicalplace/teendarwaza.dart';

class HistoricalPlaces extends StatefulWidget {
  const HistoricalPlaces({super.key});

  @override
  State<HistoricalPlaces> createState() => _HistoricalPlacesState();
}

class _HistoricalPlacesState extends State<HistoricalPlaces> {
  final List<String> historicalPlaces = [
    "Sabarmati Ashram",
    "Jama Masjid",
    "Adalaj Stepwell",
    "Bhadra Fort",
    "Sarkhej Roza",
    "Sidi Saiyyed Mosque",
    "Teen Darwaza",
  ];

  final List<Widget> pages = [
    SabarmatiAshram(),
    JamaMasjid(),
    AdalajStepwell(),
    BhadraFort(),
    SarkhejRoza(),
    SidiSaiyyedMosque(),
    TeenDarwaza(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Historical Places',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: historicalPlaces.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: Icon(Icons.location_on, color: Colors.blueAccent),
              title: Text(
                historicalPlaces[index],
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => pages[index]),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

