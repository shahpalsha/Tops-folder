import 'package:flutter/material.dart';

class Punjab extends StatefulWidget {
  const Punjab({super.key});

  @override
  State<Punjab> createState() => _PunjabState();
}

class _PunjabState extends State<Punjab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Punjab Food', style: TextStyle(color: Colors.white)),
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
                  Text('Sarson da Saag', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('A traditional Punjabi dish made with mustard greens and spices, served with makki di roti.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Mustard greens\n• Spinach\n• Maize flour\n• Garlic\n• Butter'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Cook mustard greens with spinach and spices.\n2. Blend into a smooth paste.\n3. Add maize flour and cook on low flame.'),
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
                  Text('Chole Bhature', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('A spicy chickpea curry served with deep-fried, fluffy bread.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Chickpeas\n• Tomatoes\n• Spices\n• Flour\n• Yogurt'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Soak and cook chickpeas with tomato-based gravy.\n2. Knead dough and roll into bhature.\n3. Deep-fry and serve with chole.'),
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
                  Text('Rajma Chawal', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('A classic Punjabi dish of red kidney beans cooked in a spiced tomato gravy, served with rice.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Kidney beans\n• Tomatoes\n• Onions\n• Ginger-garlic paste\n• Rice'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Soak and cook kidney beans.\n2. Prepare tomato gravy with onions and spices.\n3. Mix with beans and serve with rice.'),
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
                  Text('Paneer Tikka', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('Grilled paneer cubes marinated with yogurt and spices, served with chutney.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Paneer\n• Yogurt\n• Spices\n• Capsicum\n• Onions'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Marinate paneer cubes with yogurt and spices.\n2. Skewer with capsicum and onions.\n3. Grill until golden brown.'),
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
                  Text('Lassi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('A refreshing yogurt-based drink, either sweet or salted.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Yogurt\n• Sugar\n• Cardamom\n• Saffron\n• Rosewater'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Blend yogurt with sugar and cardamom.\n2. Add saffron or rosewater for flavor.\n3. Serve chilled.'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
