import 'package:assesment_first/Notebook/Recepies/indian_recepies.dart';
import 'package:flutter/material.dart';
import 'Books/books.dart';
import 'Drawer/drawer.dart';
import 'Ideas/ideas.dart';
import 'Recepies/recepies.dart';
import 'Travel/travels.dart';


class Mynotebook extends StatefulWidget {
  const Mynotebook({super.key, required String title});

  @override
  State<Mynotebook> createState() => _MynotebookState();
}

class _MynotebookState extends State<Mynotebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade600,
        title: Text('Notebook',style: TextStyle(color: Colors.white),),
      ),
      drawer: Mydrawer(),

      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical ,
          child:  Column(
            children: [
              SizedBox(height: 50,),
              Row(
                children: [
                  SizedBox(width: 3,),
                  InkWell(
                    highlightColor: Colors.white,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Mytravels(title: '',),));
                    },
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              color: Colors.white,
                              height: 200,
                              width: 180,
                              child: Image.asset('assets/images/Travel.png'),
                            ),
                          ),
                        ),
                        Text('Travel',style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                  SizedBox(width: 4,),
                  InkWell(
                    highlightColor: Colors.white,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Ideas()));
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            height: 200,
                            width: 185,
                            child: Image.asset('assets/images/Ideas.png'),
                          ),
                        ),
                        Text('Ideas',style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 50,),

              Row(
                children: [
                  InkWell(
                    highlightColor: Colors.white,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyBooks(title: '',),));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: 185,
                            child: Image.asset('assets/images/Books.png'),

                          ),
                          SizedBox(height: 10,),
                          Text('Books',style: TextStyle(fontSize: 20),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 3,),
                  InkWell(
                    highlightColor: Colors.white,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => IndianStatesList()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: 180,
                            child: Image.asset('assets/images/Recepies.png'),
                          ),
                          SizedBox(height: 10,),
                          Text('Recepies',style: TextStyle(fontSize: 20),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
         );
  }
}
