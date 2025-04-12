import 'package:flutter/material.dart';

class Malls extends StatefulWidget {
  const Malls({super.key});

  @override
  State<Malls> createState() => _MallsState();
}

class _MallsState extends State<Malls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Malls in Ahmedabad",
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/ahmedabad_malls/alphaone.png", width: double.infinity, height: 180, fit: BoxFit.cover),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ahmedabad One Mall (AlphaOne Mall)",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text("One of the largest malls in Ahmedabad offering a mix of shopping, dining, and entertainment.",
                              style: TextStyle(fontSize: 16)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/ahmedabad_malls/pall.png", width: double.infinity, height: 180, fit: BoxFit.cover),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Palladium Mall",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text("Luxury shopping destination in Ahmedabad featuring premium international and Indian brands along with fine dining options.",
                              style: TextStyle(fontSize: 16)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/ahmedabad_malls/gulmahor.png", width: double.infinity, height: 180, fit: BoxFit.cover),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Gulmohar Park Mall",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text("Compact but popular mall with apparel stores, cafes, and a movie theatre.",
                              style: TextStyle(fontSize: 16)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/ahmedabad_malls/himalaya.png", width: double.infinity, height: 180, fit: BoxFit.cover),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Himalaya Mall",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text("Features Croma, Big Bazaar, INOX, and several eateries and fashion brands.",
                              style: TextStyle(fontSize: 16)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/ahmedabad_malls/cg.png", width: double.infinity, height: 180, fit: BoxFit.cover),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("CG Square Mall",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text("Urban mall on CG Road known for fashion outlets, a multiplex, and cafes.",
                              style: TextStyle(fontSize: 16)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/ahmedabad_malls/acro.png", width: double.infinity, height: 180, fit: BoxFit.cover),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("The Acropolis",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text("A chic shopping destination housing premium brands and fine dining spots.",
                              style: TextStyle(fontSize: 16)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/ahmedabad_malls/agora.png", width: double.infinity, height: 180, fit: BoxFit.cover),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Shree Balaji Agora Mall",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blueAccent)),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text("Known for its entertainment facilities, restaurants, and wedding venues.",
                              style: TextStyle(fontSize: 16)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
