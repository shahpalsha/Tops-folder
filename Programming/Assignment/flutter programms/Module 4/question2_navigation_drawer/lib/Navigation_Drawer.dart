import 'package:flutter/material.dart';
import 'package:question2_navigation_drawer/Drawer.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key, required String title});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
        backgroundColor: Colors.green,
      ),
      drawer: MyNavigationDrawer(),
    );
  }
}
