import 'package:flutter/material.dart';

class Goa extends StatefulWidget {
  const Goa({super.key});

  @override
  State<Goa> createState() => _GoaState();
}

class _GoaState extends State<Goa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Goa Food', style: TextStyle(color: Colors.white)),
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
                  Text('Goan Fish Curry', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('Spicy and tangy coconut-based fish curry with Goan spices.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Fish\n• Coconut milk\n• Tamarind\n• Red chilies\n• Garlic'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Marinate fish with spices.\n2. Cook with coconut milk and tamarind.\n3. Serve hot with rice.'),
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
                  Text('Prawn Balchão', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('A spicy and tangy prawn pickle dish with Goan flavors.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Prawns\n• Vinegar\n• Red chilies\n• Mustard seeds\n• Garlic'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Marinate prawns with vinegar and spices.\n2. Cook in a spicy tangy sauce.\n3. Store and serve as a side dish.'),
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
                  Text('Bebinca', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('A traditional Goan layered dessert made with coconut milk and eggs.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Coconut milk\n• Sugar\n• Eggs\n• Flour\n• Ghee'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Mix coconut milk, eggs, and flour.\n2. Bake in layers until golden.\n3. Serve warm or chilled.'),
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
                  Text('Xacuti', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('A rich and flavorful Goan chicken or lamb curry with roasted spices.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Chicken\n• Coconut\n• Poppy seeds\n• Red chilies\n• Cloves'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Roast and grind spices.\n2. Cook chicken with coconut and spice mix.\n3. Serve hot with rice or bread.'),
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
                  Text('Sorpotel', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('A spicy and tangy pork dish cooked with vinegar and spices.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Pork\n• Vinegar\n• Red chilies\n• Garlic\n• Onions'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Boil and dice pork.\n2. Cook with vinegar and spices.\n3. Simmer for rich flavor and serve.'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
