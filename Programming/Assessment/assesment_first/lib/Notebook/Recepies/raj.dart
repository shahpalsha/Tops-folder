import 'package:flutter/material.dart';

class Rajasthan extends StatefulWidget {
  const Rajasthan({super.key});

  @override
  State<Rajasthan> createState() => _RajasthanState();
}

class _RajasthanState extends State<Rajasthan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rajasthan Food', style: TextStyle(color: Colors.white)),
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
                  Text('Dal Baati Churma', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('A traditional Rajasthani meal of crispy wheat balls served with spiced lentils and sweet churma.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Wheat flour\n• Ghee\n• Toor dal\n• Jaggery\n• Spices'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Knead wheat flour into stiff dough, shape into balls, and bake.\n2. Cook dal with spices.\n3. Crush baati, mix with ghee and jaggery to make churma.'),
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
                  Text('Gatte ki Sabzi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('A rich Rajasthani curry made with gram flour dumplings in a spiced yogurt gravy.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Gram flour\n• Yogurt\n• Cumin\n• Mustard seeds\n• Red chili'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Knead gram flour with spices, roll into logs, and boil.\n2. Cut into pieces and add to spiced yogurt gravy.\n3. Simmer until flavors blend.'),
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
                  Text('Ker Sangri', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('A dry Rajasthani dish made with wild berries and beans cooked with spices.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Ker berries\n• Sangri beans\n• Mustard seeds\n• Red chili\n• Dried mango powder'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Soak ker and sangri overnight.\n2. Sauté with mustard seeds and spices.\n3. Cook until flavors blend.'),
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
                  Text('Pyaaz Kachori', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('Crispy deep-fried kachoris filled with a spicy onion stuffing.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• All-purpose flour\n• Onions\n• Spices\n• Hing (asafoetida)\n• Oil'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Prepare spicy onion filling.\n2. Stuff into rolled dough and seal.\n3. Deep-fry until golden brown.'),
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
                  Text('Mirchi Vada', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('Spicy chili fritters stuffed with potato masala and deep-fried in gram flour batter.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Green chilies\n• Potatoes\n• Gram flour\n• Spices\n• Oil'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Stuff green chilies with spicy potato filling.\n2. Dip in gram flour batter.\n3. Deep-fry until crispy.'),
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
                  Text('Mohanthal', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('A rich gram flour sweet flavored with cardamom and nuts.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Gram flour\n• Sugar\n• Ghee\n• Cardamom\n• Nuts'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Roast gram flour in ghee until aromatic.\n2. Add sugar syrup and mix well.\n3. Garnish with nuts and let set.'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
