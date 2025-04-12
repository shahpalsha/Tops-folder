import 'package:flutter/material.dart';

class Aboutahmedabad extends StatefulWidget {
  const Aboutahmedabad({super.key});

  @override
  State<Aboutahmedabad> createState() => _AboutahmedabadState();
}

class _AboutahmedabadState extends State<Aboutahmedabad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Ahmedabad',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,color: Colors.white,),),
      backgroundColor: Colors.blueAccent.shade200,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 20,),

            Text("🏙️ City Introduction", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 5),
            Text("Ahmedabad is the largest city in Gujarat, located on the banks of the Sabarmati River. It's a vibrant city known for its culture, architecture, and history."),
            SizedBox(height: 16),

            Text("📜 Historical Background", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 5),
            Text("The city was founded in 1411 by Sultan Ahmed Shah. It's rich in Mughal architecture and played a key role in India's independence movement."),
            SizedBox(height: 16),

            Text("🕌 Cultural Significance", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 5),
            Text("Ahmedabad is famous for its Navratri celebrations, traditional Garba dance, and delicious street food. It's also known for its textile and art."),
            SizedBox(height: 16),

            Text("🏢 Modern Growth", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 5),
            Text("The city is growing fast with IT hubs, educational institutions, and industries. Key places include Science City, Kankaria Lake, and Motera Stadium."),
            SizedBox(height: 16),

            Text("🚍 Connectivity", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 5),
            Text("Ahmedabad is well-connected by air, rail, and road. It also has BRTS buses and a growing Metro system."),
            SizedBox(height: 16),

            Text("❤️ Why Visit?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(height: 5),
            Text("Ahmedabad offers a beautiful mix of tradition and modern lifestyle, perfect for food lovers, history buffs, and travelers."),
          ],
        ),
      ),
    );
  }
}
