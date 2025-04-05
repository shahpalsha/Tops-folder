import 'package:assesment_first/Notebook/Travel/paris.dart';
import 'package:assesment_first/Notebook/Travel/singapore.dart';
import 'package:assesment_first/Notebook/Travel/usa.dart';
import 'package:flutter/material.dart';
import 'australia.dart';
import 'canada.dart';
import 'london.dart';

class Mytravels extends StatefulWidget {
  const Mytravels({super.key, required String title});

  @override
  State<Mytravels> createState() => _MytravelsState();
}

class _MytravelsState extends State<Mytravels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travels',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.deepPurple.shade600,
      ),

      body: Column(
        children: [
          SizedBox(height: 20,),
          InkWell(
            highlightColor: Colors.white70,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Paris(title: '')));
    },
            child: ListTile(
            leading: Container(
              height: 100,
                width: 100,
                child: Image.asset('assets/images/paris1.png')
            ),
            title: Text('Paris',style: TextStyle(fontSize: 20),),
          ),
    ),
          SizedBox(height: 20,),

          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => London(),));
            },
          child: ListTile(
            leading: Container(
              height: 100,
                width: 100,
                child: Image.asset('assets/images/london.png')
            ),
            title: Text('London',style: TextStyle(fontSize: 20),),
          ),
          ),

          SizedBox(height: 20,),

        InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Singapore(title: '',),));
            },

         child: ListTile(
            leading: Container(
                height: 100,
                width: 100,
                child: Image.asset('assets/images/singapor.png')

            ),
            title: Text('Singapore',style: TextStyle(fontSize: 20),),
          ),
        ),

          SizedBox(height: 20,),

        InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Australia(title: '',),));
            },
         child: ListTile(
            leading: Container(
              height: 100,
                width: 100,
                child: Image.asset('assets/images/australia.png')

            ),
            title: Text('Australia',style: TextStyle(fontSize: 20),),
          ),
        ),

          SizedBox(height: 20,),

        InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Canada(title: '',),));
            },
          child: ListTile(
            leading: Container(
                height: 100,
                width: 100,
                child: Image.asset('assets/images/canada.png')
            ),
            title: Text('Canada',style: TextStyle(fontSize: 20),),
          ),
        ),

          SizedBox(height: 20,),

        InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => USA(title: '',),));
            },
          child: ListTile(
            leading: Container(
              height: 100,
                width: 100,
                child: Image.asset('assets/images/usa.png')
            ),
            title: Text('U.S.A',style: TextStyle(fontSize: 20),),
          ),
        ),
        ]
      )
    );
  }
}
