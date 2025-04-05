import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Mydetail extends StatefulWidget {
  @override
  _MydetailState createState() => _MydetailState();
}

class _MydetailState extends State<Mydetail> {
  @override
  Widget build(BuildContext context) {

    String? value;
    String? gender;


    return Scaffold(
      appBar: AppBar(
        title: Text('User Details', style: TextStyle(fontSize: 20, color: Colors.white)),
        backgroundColor: Colors.deepPurple.shade600,
        actions: [
          IconButton(
            icon: Icon(Icons.add,color: Colors.white,),
            onPressed: () {
              TextEditingController nameController = TextEditingController();
              TextEditingController emailController = TextEditingController();
              TextEditingController contactController = TextEditingController();
              TextEditingController ageController = TextEditingController();
              TextEditingController genderController = TextEditingController();
              TextEditingController cityController = TextEditingController();
              TextEditingController bookController = TextEditingController();

              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Add New User'),
                    content: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextField(controller: nameController,keyboardType: TextInputType.text, decoration: InputDecoration(labelText: 'Name')),
                          TextField(controller: emailController,keyboardType: TextInputType.emailAddress, decoration: InputDecoration(labelText: 'Email')),
                          TextField(controller: contactController,keyboardType: TextInputType.number, decoration: InputDecoration(labelText: 'Contact')),
                          TextField(controller: ageController,keyboardType: TextInputType.number, decoration: InputDecoration(labelText: 'Age')),
                          TextField(controller: genderController,keyboardType:TextInputType.text, decoration: InputDecoration(labelText: 'Gender')),
                          TextField(controller: cityController,keyboardType: TextInputType.text, decoration: InputDecoration(labelText: 'City')),
                          TextField(controller: bookController,keyboardType: TextInputType.text, decoration: InputDecoration(labelText: 'Book')),
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel')),
                      ElevatedButton(
                        onPressed: () async {
                          if (nameController.text.isNotEmpty && emailController.text.isNotEmpty) {
                            await FirebaseFirestore.instance.collection('users').add({
                              'name': nameController.text.trim(),
                              'email': emailController.text.trim(),
                              'contact': contactController.text.trim(),
                              'age': ageController.text.trim(),
                              'gender': genderController.text.trim(),
                              'city': cityController.text.trim(),
                              'book': bookController.text.trim(),
                            });
                            Navigator.pop(context);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Name and Email are required')),
                            );
                          }
                        },
                        child: Text('Add'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('users').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) return Center(child: CircularProgressIndicator());

          final ficList = snapshot.data!.docs;

          return ListView.builder(
            itemCount: ficList.length,
            itemBuilder: (context, index) {
              final doc = ficList[index];
              final data = doc.data() as Map<String, dynamic>;

              return Card(
                color: Colors.brown.shade100,
                elevation: 3,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                shadowColor: Colors.brown.shade900,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name: ${data['name']}', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Email: ${data['email']}'),
                      Text('Contact No.: ${data['contact']}'),
                      Text('Age: ${data['age']}'),
                      Text('Gender: ${data['gender']}'),
                      Text('City: ${data['city']}'),
                      Text('Selected Book: ${data['book']}'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit, color: Colors.deepPurple),
                            onPressed: () {
                              TextEditingController nameController = TextEditingController(text: data['name']);
                              TextEditingController emailController = TextEditingController(text: data['email']);
                              TextEditingController contactController = TextEditingController(text: data['contact'].toString());
                              TextEditingController ageController = TextEditingController(text: data['age'].toString());
                              TextEditingController genderController = TextEditingController(text: data['gender']);
                              TextEditingController cityController = TextEditingController(text: data['city']);
                              TextEditingController bookController = TextEditingController(text: data['book']);

                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text('Edit User'),
                                    content: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          TextField(controller: nameController,keyboardType: TextInputType.text, decoration: InputDecoration(labelText: 'Name')),
                                          TextField(controller: emailController,keyboardType: TextInputType.emailAddress, decoration: InputDecoration(labelText: 'Email')),
                                          TextField(controller: contactController,keyboardType: TextInputType.number, decoration: InputDecoration(labelText: 'Contact')),
                                          TextField(controller: ageController,keyboardType: TextInputType.number, decoration: InputDecoration(labelText: 'Age')),
                                          TextField(controller: genderController,keyboardType: TextInputType.text, decoration: InputDecoration(labelText: 'Gender')),
                                          TextField(controller: cityController,keyboardType: TextInputType.text, decoration: InputDecoration(labelText: 'City')),
                                          TextField(controller: bookController,keyboardType: TextInputType.text, decoration: InputDecoration(labelText: 'Book')),
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      TextButton(onPressed: () => Navigator.pop(context), child: Text('Cancel')),
                                      ElevatedButton(
                                        onPressed: () async {
                                          if (nameController.text.isNotEmpty && emailController.text.isNotEmpty) {
                                            await FirebaseFirestore.instance.collection('users').doc(doc.id).update({
                                              'name': nameController.text.trim(),
                                              'email': emailController.text.trim(),
                                              'contact': contactController.text.trim(),
                                              'age': ageController.text.trim(),
                                              'gender': genderController.text.trim(),
                                              'city': cityController.text.trim(),
                                              'book': bookController.text.trim(),
                                            });
                                            Navigator.pop(context);
                                          } else {
                                            ScaffoldMessenger.of(context).showSnackBar(
                                              SnackBar(content: Text('Fields cannot be empty!')),
                                            );
                                          }
                                        },
                                        child: Text('Update'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete, color: Colors.deepPurple),
                            onPressed: () {
                              FirebaseFirestore.instance.collection('users').doc(doc.id).delete();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

