import 'package:flutter/material.dart';

class RecipesScreen extends StatefulWidget {
  @override
  State<RecipesScreen> createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
  List<Map<String, dynamic>> recipes = [
    // Gujarati Dishes
    {'name': 'Dhokla', 'region': 'Gujarat', 'ingredients': 'Gram flour, Curd, Spices', 'steps': 'Ferment, Steam, Temper', 'favorite': false, 'time': 20},
    {'name': 'Thepla', 'region': 'Gujarat', 'ingredients': 'Wheat flour, Fenugreek, Spices', 'steps': 'Knead, Roll, Cook', 'favorite': false, 'time': 25},
    {'name': 'Handvo', 'region': 'Gujarat', 'ingredients': 'Rice, Lentils, Spices', 'steps': 'Ferment, Bake', 'favorite': false, 'time': 35},

    // Rajasthani Dishes
    {'name': 'Dal Baati Churma', 'region': 'Rajasthan', 'ingredients': 'Wheat, Lentils, Ghee', 'steps': 'Bake, Cook dal, Crush churma', 'favorite': false, 'time': 40},
    {'name': 'Gatte ki Sabzi', 'region': 'Rajasthan', 'ingredients': 'Gram flour, Curd, Spices', 'steps': 'Make dumplings, Cook in curry', 'favorite': false, 'time': 30},

    // Punjabi Dishes
    {'name': 'Chole Bhature', 'region': 'Punjab', 'ingredients': 'Chickpeas, Flour, Spices', 'steps': 'Cook chickpeas, Fry bhature', 'favorite': false, 'time': 45},
    {'name': 'Sarson da Saag', 'region': 'Punjab', 'ingredients': 'Mustard leaves, Makki roti', 'steps': 'Boil, Mash, Cook', 'favorite': false, 'time': 50},

    // Kashmiri Dishes
    {'name': 'Rogan Josh', 'region': 'Kashmir', 'ingredients': 'Paneer, Yogurt, Kashmiri spices', 'steps': 'Sauté, Simmer, Serve', 'favorite': false, 'time': 40},
    {'name': 'Modur Pulao', 'region': 'Kashmir', 'ingredients': 'Rice, Dry fruits, Saffron', 'steps': 'Cook rice, Add dry fruits', 'favorite': false, 'time': 30},

    // Uttarakhand Dishes
    {'name': 'Aloo Ke Gutke', 'region': 'Uttarakhand', 'ingredients': 'Potatoes, Mustard oil, Spices', 'steps': 'Boil, Fry, Serve', 'favorite': false, 'time': 25},
    {'name': 'Kafuli', 'region': 'Uttarakhand', 'ingredients': 'Spinach, Fenugreek, Spices', 'steps': 'Boil, Mash, Simmer', 'favorite': false, 'time': 30},

    // Maharashtrian Dishes
    {'name': 'Pav Bhaji', 'region': 'Maharashtra', 'ingredients': 'Mixed veggies, Pav bread', 'steps': 'Mash, Cook, Serve', 'favorite': false, 'time': 35},
    {'name': 'Misal Pav', 'region': 'Maharashtra', 'ingredients': 'Sprouts, Onions, Pav', 'steps': 'Cook sprouts, Add masala', 'favorite': false, 'time': 30},

    // Goan Dishes
    {'name': 'Vegetable Xacuti', 'region': 'Goa', 'ingredients': 'Coconut, Vegetables, Spices', 'steps': 'Grind, Cook, Simmer', 'favorite': false, 'time': 40},
    {'name': 'Bebinca', 'region': 'Goa', 'ingredients': 'Coconut milk, Flour, Sugar', 'steps': 'Layer, Bake, Serve', 'favorite': false, 'time': 60},

    // Bengali Dishes
    {'name': 'Shukto', 'region': 'West Bengal', 'ingredients': 'Bitter gourd, Vegetables, Mustard', 'steps': 'Fry, Simmer, Serve', 'favorite': false, 'time': 30},
    {'name': 'Sandesh', 'region': 'West Bengal', 'ingredients': 'Milk, Sugar, Cardamom', 'steps': 'Boil, Shape, Serve', 'favorite': false, 'time': 20},

    // South Indian Dishes
    {'name': 'Dosa', 'region': 'South India', 'ingredients': 'Rice, Lentils, Water', 'steps': 'Ferment, Spread, Cook', 'favorite': false, 'time': 25},
    {'name': 'Sambar', 'region': 'South India', 'ingredients': 'Lentils, Vegetables, Tamarind', 'steps': 'Boil dal, Add vegetables', 'favorite': false, 'time': 40},
    {'name': 'Rasam', 'region': 'South India', 'ingredients': 'Tamarind, Tomato, Spices', 'steps': 'Boil, Temper, Serve', 'favorite': false, 'time': 25},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple.shade600,
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            color: Colors.deepPurple.shade100,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(recipes[index]['name'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text('Region: ${recipes[index]['region']}', style: TextStyle(color: Colors.deepPurple.shade700)),
                  SizedBox(height: 5),
                  Text('Ingredients: ${recipes[index]['ingredients']}'),
                  Text('Steps: ${recipes[index]['steps']}'),
                  Text('Time: ${recipes[index]['time']} min'),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            recipes[index]['favorite'] = !recipes[index]['favorite'];
                          });
                        },
                        child: Icon(
                          recipes[index]['favorite'] ? Icons.favorite : Icons.favorite_border,
                          color: Colors.deepPurple.shade500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
