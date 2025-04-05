import 'package:assesment_first/Notebook/Books/referenceandeducational.dart';
import 'package:flutter/material.dart';
import 'fiction.dart';
import 'nonfiction.dart';

class MyBooks extends StatefulWidget {
  const MyBooks({super.key, required String title});

  @override
  State<MyBooks> createState() => _MyBooksState();
}

class _MyBooksState extends State<MyBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Books',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple.shade600,
      ),
      body: Column(
        children: [

          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Fiction(),));
    },
            child: ListTile(
              leading:  Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/images/fictionbook.png'),
              ),
              title: Text('Fiction',style: TextStyle(fontSize: 18),),
            ),
          ),

          Divider(),

          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:  (context) => Nonfiction(),));
            },
         child: ListTile(
             leading:  Container(
               height: 50,
               width: 50,
               child: Image.asset('assets/images/fictionbook.png'),
             ),
           title: Text('Non-Fiction',style: TextStyle(fontSize: 18),),
         ),
          ),
          

          Divider(),

          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Myrefedufiction(),));
            },
            child: ListTile(
              leading:  Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/images/fictionbook.png'),
              ),
              title: Text('Reference & Eductional',style: TextStyle(fontSize: 18),),
            ),
          ),
        ],
      )
    );
  }
}
