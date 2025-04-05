import 'package:flutter/material.dart';

class Kashmir extends StatefulWidget {
  const Kashmir({super.key});

  @override
  State<Kashmir> createState() => _KashmirState();
}

class _KashmirState extends State<Kashmir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kashmir Food', style: TextStyle(color: Colors.white)),
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
                  Text('Rogan Josh', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('A rich, aromatic lamb curry cooked with Kashmiri spices and yogurt.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Lamb\n• Yogurt\n• Kashmiri red chili\n• Ginger\n• Cloves'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Sauté spices and lamb until browned.\n2. Add yogurt and slow-cook until tender.\n3. Serve hot with rice.'),
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
                  Text('Dum Aloo', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('Baby potatoes slow-cooked in a thick yogurt-based gravy.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Baby potatoes\n• Yogurt\n• Asafoetida\n• Kashmiri chili\n• Fennel seeds'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Fry potatoes until golden.\n2. Cook in spiced yogurt gravy.\n3. Simmer until flavors blend.'),
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
                  Text('Yakhni', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('A delicate yogurt-based mutton curry flavored with cardamom and saffron.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Mutton\n• Yogurt\n• Saffron\n• Cardamom\n• Fennel seeds'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Boil mutton with whole spices.\n2. Add yogurt and saffron.\n3. Simmer until tender.'),
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
                  Text('Gushtaba', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('Delicate meatballs cooked in a creamy yogurt sauce.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Minced mutton\n• Yogurt\n• Cardamom\n• Ginger\n• Fennel'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Prepare smooth minced mutton balls.\n2. Cook in a spiced yogurt gravy.\n3. Simmer until soft and juicy.'),
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
                  Text('Modur Pulao', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('A fragrant Kashmiri sweet rice dish with saffron, nuts, and dry fruits.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Basmati rice\n• Saffron\n• Almonds\n• Raisins\n• Ghee'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Sauté nuts in ghee.\n2. Cook rice with saffron and dry fruits.\n3. Simmer until flavors blend.'),
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
                  Text('Noon Chai', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Text('A traditional Kashmiri pink tea made with salt, milk, and baking soda.'),
                  SizedBox(height: 5),
                  Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('• Green tea leaves\n• Baking soda\n• Milk\n• Salt\n• Cardamom'),
                  SizedBox(height: 5),
                  Text('Recipe:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('1. Brew tea leaves with baking soda.\n2. Add milk and salt.\n3. Whisk until frothy and serve.'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
