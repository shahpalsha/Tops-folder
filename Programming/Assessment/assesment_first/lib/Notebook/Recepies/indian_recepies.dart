import 'package:assesment_first/Notebook/Recepies/bgl.dart';
import 'package:assesment_first/Notebook/Recepies/kashmir.dart';
import 'package:assesment_first/Notebook/Recepies/maha.dart';
import 'package:assesment_first/Notebook/Recepies/pnb.dart';
import 'package:assesment_first/Notebook/Recepies/raj.dart';
import 'package:assesment_first/Notebook/Recepies/south.dart';
import 'package:assesment_first/Notebook/Recepies/up.dart';
import 'package:flutter/material.dart';

import 'goa.dart';
import 'gujarat.dart';

class IndianStatesList extends StatefulWidget {
  @override
  State<IndianStatesList> createState() => _IndianStatesListState();
}

class _IndianStatesListState extends State<IndianStatesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected States', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple.shade600,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
       child:  Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Gujarat(),));
            },
            child: Card(
            margin: EdgeInsets.all(10),
            color: Colors.grey.shade200,
            child: Container(
              height: 70,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    flex: 1, // Controls image size
                    child: Image.asset(
                      'assets/recepies/guj.jpg',
                      fit: BoxFit.cover, // Ensures it fills the space properly
                    ),
                  ),
                  SizedBox(width: 10), // Adds spacing between image and text
                  Expanded(
                    flex: 3, // Adjusts text area
                    child: Text(
                      'Gujarat food',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Punjab(),));
            },
            child: Card(
              margin: EdgeInsets.all(10),
              color: Colors.grey.shade200,
              child: Container(
                height: 70, // Adjust as needed
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1, // Controls image size
                      child: Image.asset(
                        'assets/recepies/punjabi.png',
                        fit: BoxFit.cover, // Ensures it fills the space properly
                      ),
                    ),
                    SizedBox(width: 10), // Adds spacing between image and text
                    Expanded(
                      flex: 3, // Adjusts text area
                      child: Text(
                        'Punjab',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),


          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Rajasthan(),));
            },
            child: Card(
              margin: EdgeInsets.all(10),
              color: Colors.grey.shade200,
              child: Container(
                height: 70, // Adjust as needed
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1, // Controls image size
                      child: Image.asset(
                        'assets/recepies/raj.png',
                        fit: BoxFit.cover, // Ensures it fills the space properly
                      ),
                    ),
                    SizedBox(width: 10), // Adds spacing between image and text
                    Expanded(
                      flex: 3, // Adjusts text area
                      child: Text(
                        'Rajasthan',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => WestBengal(),));
            },
            child: Card(
              margin: EdgeInsets.all(10),
              color: Colors.grey.shade200,
              child: Container(
                height: 70, // Adjust as needed
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1, // Controls image size
                      child: Image.asset(
                        'assets/recepies/bengali.png',
                        fit: BoxFit.cover, // Ensures it fills the space properly
                      ),
                    ),
                    SizedBox(width: 10), // Adds spacing between image and text
                    Expanded(
                      flex: 3, // Adjusts text area
                      child: Text(
                        'West Bengal',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Kashmir(),));
            },
            child: Card(
              margin: EdgeInsets.all(10),
              color: Colors.grey.shade200,
              child: Container(
                height: 70, // Adjust as needed
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1, // Controls image size
                      child: Image.asset(
                        'assets/recepies/kashmir.png',
                        fit: BoxFit.cover, // Ensures it fills the space properly
                      ),
                    ),
                    SizedBox(width: 10), // Adds spacing between image and text
                    Expanded(
                      flex: 3, // Adjusts text area
                      child: Text(
                        'Kashmir',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Maharashtra(),));
            },
            child: Card(
              margin: EdgeInsets.all(10),
              color: Colors.grey.shade200,
              child: Container(
                height: 70, // Adjust as needed
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1, // Controls image size
                      child: Image.asset(
                        'assets/recepies/maha.png',
                        fit: BoxFit.cover, // Ensures it fills the space properly
                      ),
                    ),
                    SizedBox(width: 10), // Adds spacing between image and text
                    Expanded(
                      flex: 3, // Adjusts text area
                      child: Text(
                        'Maharashtra',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SouthIndian(),));
            },
            child: Card(
              margin: EdgeInsets.all(10),
              color: Colors.grey.shade200,
              child: Container(
                height: 70, // Adjust as needed
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1, // Controls image size
                      child: Image.asset(
                        'assets/recepies/south.png',
                        fit: BoxFit.cover, // Ensures it fills the space properly
                      ),
                    ),
                    SizedBox(width: 10), // Adds spacing between image and text
                    Expanded(
                      flex: 3, // Adjusts text area
                      child: Text(
                        'South India',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Uttarakhand(),));
            },
            child: Card(
              margin: EdgeInsets.all(10),
              color: Colors.grey.shade200,
              child: Container(
                height: 70, // Adjust as needed
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1, // Controls image size
                      child: Image.asset(
                        'assets/recepies/up.png',
                        fit: BoxFit.cover, // Ensures it fills the space properly
                      ),
                    ),
                    SizedBox(width: 10), // Adds spacing between image and text
                    Expanded(
                      flex: 3, // Adjusts text area
                      child: Text(
                        'Uttarakhand',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Goa(),));
            },
            child: Card(
              margin: EdgeInsets.all(10),
              color: Colors.grey.shade200,
              child: Container(
                height: 70, // Adjust as needed
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1, // Controls image size
                      child: Image.asset(
                        'assets/recepies/goa.png',
                        fit: BoxFit.cover, // Ensures it fills the space properly
                      ),
                    ),
                    SizedBox(width: 10), // Adds spacing between image and text
                    Expanded(
                      flex: 3, // Adjusts text area
                      child: Text(
                        'Goa',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
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