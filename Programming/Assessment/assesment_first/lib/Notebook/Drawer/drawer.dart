import 'package:assesment_first/Login.dart';
import 'package:assesment_first/Notebook/Books/Models/details.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatefulWidget {
  const Mydrawer({super.key});

  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple.shade100,
      child: Column(
        children: [
          drawerHeader(context),
          drawerMenuItem(context),
        ],
      ),
    );
  }

  Container drawerHeader(BuildContext context) => Container(
    child: Column(
      children: [
        SizedBox(height: 60),
        Text(
          'Palsha shah',
          style: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
      ],
    ),
  );

  Widget drawerMenuItem(BuildContext context) => Column(
    children: [
      ListTile(
        leading: Icon(Icons.home, color: Colors.deepPurple),
        title: Text('Home'),
      ),

      InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Mydetail()));
        },
        child: ListTile(
          leading: Icon(Icons.cloud_done_rounded, color: Colors.deepPurple),
          title: Text('Database'),
        ),
      ),

      InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Placeholder()));
        },
        child: ListTile(
          leading: Icon(Icons.person, color: Colors.deepPurple),
          title: Text('Profile'),
        ),
      ),

      InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Placeholder()));
        },
        child: ListTile(
          leading: Icon(Icons.settings, color: Colors.deepPurple),
          title: Text('Settings'),
        ),
      ),

      InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: Colors.deepPurple.shade100,
                title: Text(
                  "Logout",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                content: Text("Are you sure you want to logout?"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel",
                        style: TextStyle(color: Colors.black)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) =>
                                  LoginPage(title: 'Login')),
                              (route) => false);
                    },
                    child: Text("Logout",
                        style: TextStyle(color: Colors.deepPurple.shade600)),
                  ),
                ],
              );
            },
          );
        },
        child: ListTile(
          leading: Icon(Icons.logout, color: Colors.deepPurple),
          title: Text('Logout'),
        ),
      ),
    ],
  );
}
