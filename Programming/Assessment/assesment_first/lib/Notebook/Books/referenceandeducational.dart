import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Mydetail extends StatefulWidget {
  @override
  _MydetailState createState() => _MydetailState();
}

<<<<<<< HEAD
class _MyrefedufictionState extends State< Myrefedufiction> {
  final user = FirebaseAuth.instance.currentUser;

  final referenceandeducational_books = [
    'Dictionaries & Encyclopedias reference and educational books',
    'Cookbooks reference and educational books',
    'Travel Guides reference and educational books'];

  String? value;
  String? gender;

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailidController = TextEditingController();
  TextEditingController _contactnoController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _cityController = TextEditingController();

  List<Map<String, String>> refedubookList = [];

  Future refedufictionbook() async {
    if (_nameController.text.isEmpty ||
        _emailidController.text.isEmpty ||
        _contactnoController.text.isEmpty ||
        _ageController.text.isEmpty ||
        _cityController.text.isEmpty ||
        value == null ||
        gender == null) {
      Fluttertoast.showToast(
          msg: "Please fill all fields",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      return;
    }

    String _id = randomAlphaNumeric(10);
    String _name = _nameController.text.trim();
    String _email = _emailidController.text.trim();
    String _contact = _contactnoController.text.trim();
    String _age = _ageController.text.trim();
    String _city = _cityController.text.trim();

    final user = RefEduBoookModel(
      id: _id,
      name: _name,
      email: _email,
      contact: int.parse(_contact),
      age: int.parse(_age),
      gender: gender!,
      city: _city,
      book: value!,
    );

    await FirebaseFirestore.instance.collection('users').doc(_id).set(user.toJson());

    Fluttertoast.showToast(
        msg: "Created successfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);

    setState(() {
      refedubookList.add({
        'name': _name,
        'email': _email,
        'contact': _contact,
        'age': _age,
        'gender': gender!,
        'city': _city,
        'value': value!
      });
    });

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Mydetail(),
      ),
    );
  }

=======
class _MydetailState extends State<Mydetail> {
>>>>>>> origin/main
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

