import 'package:flutter/material.dart';
import 'package:travel_guidance_app/homepage/Ahmebabad/Malls.dart';
import 'package:travel_guidance_app/homepage/Ahmebabad/aboutahmedabad.dart';
import 'package:travel_guidance_app/homepage/Ahmebabad/ahmedabad_dams_lake.dart';
import 'package:travel_guidance_app/homepage/Ahmebabad/ahmedabadinmap.dart';
import 'package:travel_guidance_app/homepage/Ahmebabad/amusementparks.dart';
import 'package:travel_guidance_app/homepage/Ahmebabad/cinema.dart';
import 'package:travel_guidance_app/homepage/Ahmebabad/developer.dart';
import 'package:travel_guidance_app/homepage/Ahmebabad/devotionalplaces.dart';
import 'package:travel_guidance_app/homepage/Ahmebabad/distance.dart';
import 'package:travel_guidance_app/homepage/Ahmebabad/historicalplace.dart';
import 'package:travel_guidance_app/homepage/Ahmebabad/hotels.dart';
import 'package:travel_guidance_app/homepage/Ahmebabad/howtoreach.dart';
import 'package:travel_guidance_app/homepage/Ahmebabad/other_places.dart';
import 'package:travel_guidance_app/homepage/Ahmebabad/places_to_see_around.dart';
import 'package:travel_guidance_app/homepage/Ahmebabad/travel_guide.dart';

class Myahmedabad extends StatefulWidget {
  const Myahmedabad({super.key});

  @override
  State<Myahmedabad> createState() => _MyahmedabadState();
}

class _MyahmedabadState extends State<Myahmedabad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ahmedabad Guide",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Colors.blueAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body:Container(
       height: double.infinity,
       padding: EdgeInsets.all(10),
       child: GridView.count(
         crossAxisCount: 3,
         crossAxisSpacing: 10,
         mainAxisSpacing: 10,
         children: [
           Padding(
             padding: const EdgeInsets.all(5),
             child: InkWell(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Aboutahmedabad(),));
               },
            child:  Container(
               decoration: BoxDecoration(
                 color: Colors.red,
                 borderRadius: BorderRadius.circular(12),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.location_city, color: Colors.white),
                   SizedBox(height: 10),
                   Text('About Ahmedabad', style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
                 ],
               ),
             ),
           ),
           ),

           Padding(
             padding: const EdgeInsets.all(5),
             child: InkWell(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Howtoreach(),));
               },
            child:  Container(
               decoration: BoxDecoration(
                 color: Colors.blueGrey,
                 borderRadius: BorderRadius.circular(12),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.directions_bus, color: Colors.white),
                   SizedBox(height: 10),
                   Text('How to Reach', style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
                 ],
               ),
             ),
           ),
           ),

           Padding(
             padding: const EdgeInsets.all(5),
             child: InkWell(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Ahmedabadinmap(),));
               },
            child:  Container(
               decoration: BoxDecoration(
                 color: Colors.lightGreen,
                 borderRadius: BorderRadius.circular(12),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.map, color: Colors.white),
                   SizedBox(height: 10),
                   Text('Ahmedabad in Map', style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
                 ],
               ),
             ),
           ),
           ),

           Padding(
             padding: const EdgeInsets.all(5),
             child:InkWell(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => HistoricalPlaces(),));
               },
               child: Container(
               decoration: BoxDecoration(
                 color: Colors.blue,
                 borderRadius: BorderRadius.circular(12),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.account_balance, color: Colors.white),
                   SizedBox(height: 10),
                   Text('Historical  Places', style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
                 ],
               ),
             ),
           ),
           ),

           Padding(
             padding: const EdgeInsets.all(5),
             child: InkWell(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => DevotionalPlaces(),));
               },
               child: Container(
               decoration: BoxDecoration(
                 color: Colors.teal,
                 borderRadius: BorderRadius.circular(12),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.temple_buddhist, color: Colors.white),
                   SizedBox(height: 10),
                   Text('Devotional Places', style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
                 ],
               ),
             ),
           ),
           ),

           Padding(
             padding: const EdgeInsets.all(5),
             child: InkWell(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => AmusementParks(),));
               },
               child: Container(
               decoration: BoxDecoration(
                 color: Colors.brown,
                 borderRadius: BorderRadius.circular(12),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.park, color: Colors.white),
                   SizedBox(height: 10),
                   Text('Amusement Parks', style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
                 ],
               ),
             ),
           ),
           ),

           Padding(
             padding: const EdgeInsets.all(5),
             child: InkWell(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => DamsAndLakes(),));
               },
               child: Container(
               decoration: BoxDecoration(
                 color: Colors.cyan,
                 borderRadius: BorderRadius.circular(12),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.pool, color: Colors.white),
                   SizedBox(height: 10),
                   Text('Dams Lake', style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
                 ],
               ),
             ),
           ),
           ),

           Padding(
             padding: const EdgeInsets.all(5),
             child: InkWell(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => OtherPlaces(),));
               },
               child: Container(
               decoration: BoxDecoration(
                 color: Colors.indigo,
                 borderRadius: BorderRadius.circular(12),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.apartment, color: Colors.white),
                   SizedBox(height: 10),
                   Text('Other Places', style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
                 ],
               ),
             ),
           ),
           ),

           Padding(
             padding: const EdgeInsets.all(5),
             child: InkWell(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => PlacesToSeeAround(),));
               },
               child: Container(
               decoration: BoxDecoration(
                 color: Colors.pinkAccent,
                 borderRadius: BorderRadius.circular(12),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.place, color: Colors.white),
                   SizedBox(height: 10),
                   Text('Places to See Around', style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
                 ],
               ),
             ),
           ),
           ),

           Padding(
             padding: const EdgeInsets.all(5),
             child: InkWell(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Cinemas(),));
               },
               child: Container(
               decoration: BoxDecoration(
                 color: Colors.purple,
                 borderRadius: BorderRadius.circular(12),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.theaters, color: Colors.white),
                   SizedBox(height: 10),
                   Text('Cinemas', style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
                 ],
               ),
             ),
           ),
           ),

           Padding(
             padding: const EdgeInsets.all(5),
             child: InkWell(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Hotels(),));
               },
               child: Container(
               decoration: BoxDecoration(
                 color: Colors.amber,
                 borderRadius: BorderRadius.circular(12),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.hotel, color: Colors.white),
                   SizedBox(height: 10),
                   Text('Hotels', style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
                 ],
               ),
             ),
           ),
           ),

           Padding(
             padding: const EdgeInsets.all(5),
             child: InkWell(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Malls(),));
               },
               child: Container(
               decoration: BoxDecoration(
                 color: Colors.green,
                 borderRadius: BorderRadius.circular(12),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.store_mall_directory, color: Colors.white),
                   SizedBox(height: 10),
                   Text('Malls', style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
                 ],
               ),
             ),
           ),
           ),

           Padding(
             padding: const EdgeInsets.all(5),
             child: InkWell(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => TravelGuide(),));
               },
               child: Container(
               decoration: BoxDecoration(
                 color: Colors.deepPurpleAccent,
                 borderRadius: BorderRadius.circular(12),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.travel_explore, color: Colors.white),
                   SizedBox(height: 10),
                   Text('Travel Guide', style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
                 ],
               ),
             ),
           ),
           ),

           Padding(
             padding: const EdgeInsets.all(5),
             child: InkWell(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => DistancePage(),));
               },
               child: Container(
               decoration: BoxDecoration(
                 color: Colors.redAccent,
                 borderRadius: BorderRadius.circular(12),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.assistant_navigation, color: Colors.white),
                   SizedBox(height: 10),
                   Text('Distances', style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
                 ],
               ),
             ),
           ),
           ),

           Padding(
             padding: const EdgeInsets.all(5),
             child:InkWell(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => DeveloperPage(),));
               },
               child: Container(
               decoration: BoxDecoration(
                 color: Colors.deepPurple,
                 borderRadius: BorderRadius.circular(12),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.code, color: Colors.white),
                   SizedBox(height: 10),
                   Text('Developer', style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
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
