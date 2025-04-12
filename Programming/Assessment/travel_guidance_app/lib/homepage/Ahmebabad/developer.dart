import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DeveloperPage extends StatefulWidget {
  const DeveloperPage({super.key});

  @override
  State<DeveloperPage> createState() => _DeveloperPageState();
}

class _DeveloperPageState extends State<DeveloperPage> {
  // Function to open URLs or emails
  void _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Could not launch $url")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Developer Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // About Me
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About Me",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.blueAccent),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Hi, I am Palsha, a passionate mobile app developer. I specialize in Flutter and Dart, with experience in building responsive, scalable apps.",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Skills & Technologies",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.blueAccent),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "• Flutter\n• Dart\n• Firebase\n• Git & GitHub\n• REST APIs\n• SQL & NoSQL databases",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Projects",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.blueAccent),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "1. E-Notebook Management System\n2. Travel Guidance Management System",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () => _launchUrl(
                          "https://github.com/shahpalsha/Tops-folder/tree/main/Programming/Assessment"),
                      child: Text(
                        "GitHub: Project Repo",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Contact Me",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.blueAccent),
                    ),
                    SizedBox(height: 5),
                    GestureDetector(
                      onTap: () => _launchUrl("mailto:shahpalsha@gmail.com"),
                      child: Text(
                        "Email: shahpalsha@gmail.com",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                    SizedBox(height: 5),
                    GestureDetector(
                      onTap: () => _launchUrl(
                          "https://www.linkedin.com/in/palsha-shah-98a753316/"),
                      child: Text(
                        "LinkedIn: palsha-shah",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                    SizedBox(height: 5),
                    GestureDetector(
                      onTap: () => _launchUrl(
                          "https://github.com/shahpalsha/Tops-folder/tree/main"),
                      child: Text(
                        "GitHub: shahpalsha",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
