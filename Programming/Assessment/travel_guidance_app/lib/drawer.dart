import 'package:flutter/material.dart';
import 'package:travel_guidance_app/homepage/Ahmebabad/developer.dart';
import 'Login.dart';
import 'homepage.dart';
// import 'loginpage.dart'; // Uncomment this if you want to navigate to login after logout

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              "Palsha Shah",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              "shahpalsha@gmail.com",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 40, color: Colors.blueAccent),
            ),
            decoration: BoxDecoration(
              color: Colors.blueAccent.shade100,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.blueAccent.shade700),
            title: Text(
              'Home',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Myhomepage(title: '')),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info, color: Colors.blueAccent.shade700),
            title: Text(
              'About',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => DeveloperPage(),));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.blueAccent.shade700),
            title: Text(
              'Settings',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              // Navigate to Settings screen
            },
          ),
          Divider(color: Colors.blueAccent),
          ListTile(
            leading: Icon(Icons.exit_to_app, color: Colors.blueAccent.shade700),
            title: Text(
              'Logout',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: Colors.blueAccent.shade100,
                    title: Text(
                      "Confirm Logout",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    content: Text(
                      "Are you sure you want to logout?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // close dialog
                          Navigator.of(context).pop(); // close drawer

                          // If you want to go back to login screen:
                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(title: '',)));
                        },
                        child: Text(
                          "Logout",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
