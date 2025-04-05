import 'package:flutter/material.dart';

class SouthIndian extends StatefulWidget {
  const SouthIndian({super.key});

  @override
  State<SouthIndian> createState() => _SouthIndianState();
}

class _SouthIndianState extends State<SouthIndian> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('South Indian Food', style: TextStyle(color: Colors.white)),
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
                  Text('Dosa', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('Crispy, thin rice and lentil pancake served with chutney and sambar.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Rice\n• Urad dal\n• Fenugreek seeds\n• Salt\n• Oil'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Soak rice and urad dal, then grind into a batter.\n2. Ferment overnight.\n3. Cook thin pancakes on a hot tawa.'),
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
                  Text('Idli', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('Soft and fluffy steamed rice cakes served with chutney and sambar.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Rice\n• Urad dal\n• Fenugreek seeds\n• Salt\n• Water'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Soak and grind rice and urad dal.\n2. Ferment overnight.\n3. Steam the batter in idli molds.'),
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
                  Text('Sambar', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('A spicy lentil and vegetable stew with tamarind and spices.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Toor dal\n• Tamarind\n• Drumstick\n• Tomato\n• Mustard seeds'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Cook dal with vegetables.\n2. Add tamarind pulp and spices.\n3. Simmer and serve hot.'),
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
                  Text('Pongal', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('A savory rice and lentil dish tempered with black pepper and cumin.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Rice\n• Moong dal\n• Black pepper\n• Cumin seeds\n• Ghee'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Cook rice and dal together.\n2. Temper with ghee, pepper, and cumin.\n3. Serve hot with coconut chutney.'),
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
                  Text('Vada', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('Deep-fried crispy lentil fritters served with chutney and sambar.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Urad dal\n• Green chilies\n• Curry leaves\n• Black pepper\n• Oil'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Soak and grind urad dal.\n2. Shape into doughnuts and deep-fry.\n3. Serve with coconut chutney.'),
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
                  Text('Appam', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('Soft and fluffy rice pancakes with a crispy edge, served with stew.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Rice\n• Coconut milk\n• Yeast\n• Sugar\n• Salt'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Ferment rice batter with yeast.\n2. Cook in an appam pan.\n3. Serve with coconut milk curry.'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
