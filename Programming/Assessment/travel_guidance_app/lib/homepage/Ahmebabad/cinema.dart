import 'package:flutter/material.dart';

class Cinemas extends StatefulWidget {
  const Cinemas({super.key});

  @override
  State<Cinemas> createState() => _CinemasState();
}

class _CinemasState extends State<Cinemas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cinemas in Ahmedabad",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Cinepolis Ahmedabad",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Located in AlphaOne Mall, known for premium screen and sound quality.",
                          style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("PVR Acropolis Mall",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Upscale multiplex offering great ambiance and food court nearby.",
                          style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("INOX R21",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Modern theater located at R21 Mall with recliner seating options.",
                          style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("City Gold Ashram Road",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Popular budget-friendly multiplex in the city center.",
                          style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mukta A2 Cinemas",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Located near Law Garden, known for economical ticket prices.",
                          style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Carnival Cinemas",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Multiplex with digital projection and Dolby surround sound.",
                          style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Wide Angle Multiplex",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Large multiplex with both cinema and fun zone.",
                          style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Drive-In Cinema",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Open-air cinema offering a unique movie-watching experience in your car.",
                          style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Cinépolis S G Highway",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Located on S G Highway, Cinepolis offers an excellent viewing experience.",
                          style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Adlabs Cinemas",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Popular cinema offering a great movie-watching experience with advanced technology.",
                          style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Miraj City Pulse – Kankaria",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Located at Kankaria Road, this cinema features recliner seating and mobile ticketing.",
                          style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Miraj Cinemas – Shalin Square",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Located at Shalin Square on SP Ring Road, offering air-conditioned halls and digital payments.",
                          style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Delite Cinema",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("An iconic cinema with a historical legacy located in the heart of the city.",
                          style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Rajhans Cinemas",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("A renowned multiplex offering top-notch viewing experience with recliners and more.",
                          style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("IMAX Ahmedabad",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Known for its IMAX screens providing an immersive cinematic experience.",
                          style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Rai Cinema",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueGrey)),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text("Classic cinema located in the city center known for Bollywood movies.",
                          style: TextStyle(fontSize: 16)),
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
