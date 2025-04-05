import 'package:flutter/material.dart';

class Uttarakhand extends StatefulWidget {
  const Uttarakhand({super.key});

  @override
  State<Uttarakhand> createState() => _UttarakhandState();
}

class _UttarakhandState extends State<Uttarakhand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Uttarakhand Food', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple.shade600,
      ),
      body: ListView(
        children: [
          Card(
            margin: EdgeInsets.all(10),
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Aloo Ke Gutke', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('Spicy and crispy potatoes cooked with mustard seeds and red chilies.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Potatoes\n• Mustard seeds\n• Dry red chilies\n• Turmeric\n• Coriander leaves'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Boil and cut potatoes into pieces.\n2. Sauté mustard seeds and chilies.\n3. Add potatoes and cook until crispy.'),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Chainsoo', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('Protein-rich dal made from roasted black gram lentils.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Black gram lentils\n• Garlic\n• Onion\n• Cumin seeds\n• Mustard oil'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Roast and grind black gram.\n2. Sauté garlic, onions, and cumin.\n3. Add ground dal and cook with water.'),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Kafuli', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('Traditional green leafy vegetable curry rich in flavors.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Spinach\n• Fenugreek leaves\n• Garlic\n• Curd\n• Rice flour'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Boil and blend spinach with fenugreek.\n2. Sauté garlic and add blended greens.\n3. Mix curd and rice flour for thickness.'),
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Jhangora Kheer', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('A delicious millet-based pudding cooked in milk and sugar.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Jhangora (barnyard millet)\n• Milk\n• Sugar\n• Cardamom\n• Dry fruits'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Soak jhangora and cook in milk.\n2. Add sugar, cardamom, and dry fruits.\n3. Simmer until thick and creamy.'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
