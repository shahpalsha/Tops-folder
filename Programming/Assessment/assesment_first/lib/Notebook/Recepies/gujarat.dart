import 'package:flutter/material.dart';

class Gujarat extends StatefulWidget {
  const Gujarat({super.key});

  @override
  State<Gujarat> createState() => _GujaratState();
}

class _GujaratState extends State<Gujarat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gujarat Food', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple.shade600,
      ),
      body: ListView(
        children: [
          Card(
            margin: EdgeInsets.all(10),
            color: Colors.deepPurple.shade100,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Dhokla', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('Soft, steamed savory cake made from fermented rice and chickpea flour.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Gram flour\n• Yogurt\n• Green chili\n• Mustard seeds\n• Curry leaves'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Mix gram flour, yogurt, and spices.\n2. Steam the batter.\n3. Temper with mustard seeds and curry leaves.'),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            color: Colors.deepPurple.shade100,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Thepla', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('Spiced flatbread made with wheat flour and fenugreek leaves.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Wheat flour\n• Fenugreek leaves\n• Yogurt\n• Turmeric\n• Green chili'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Knead dough with wheat flour, fenugreek, and spices.\n2. Roll into thin rounds.\n3. Cook on a tawa with oil.'),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            color: Colors.deepPurple.shade100,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Undhiyu', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('Mixed winter vegetable dish slow-cooked with spices.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Surti papdi\n• Brinjal\n• Potato\n• Green garlic\n• Coconut'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Chop vegetables and mix with spices.\n2. Cook in layers on slow flame.\n3. Serve hot with puris.'),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            color: Colors.deepPurple.shade100,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Khandvi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('Thin rolls made from gram flour and buttermilk, tempered with mustard seeds.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Gram flour\n• Buttermilk\n• Turmeric\n• Mustard seeds\n• Curry leaves'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Cook gram flour and buttermilk mixture.\n2. Spread thin and roll.\n3. Add mustard seed tempering.'),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            color: Colors.deepPurple.shade100,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Fafda-Jalebi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('Crunchy gram flour snack served with sweet jalebi.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Gram flour\n• Carom seeds\n• Oil\n• Sugar\n• Saffron'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Make dough with gram flour and spices.\n2. Roll and fry into long strips.\n3. Prepare sugar syrup and fry jalebis.'),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            color: Colors.deepPurple.shade100,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Handvo', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('Savory rice and lentil cake baked or pan-fried with vegetables.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Rice\n• Lentils\n• Bottle gourd\n• Curd\n• Sesame seeds'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Ferment rice and lentil batter.\n2. Mix vegetables and spices.\n3. Bake or pan-cook until crispy.'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


