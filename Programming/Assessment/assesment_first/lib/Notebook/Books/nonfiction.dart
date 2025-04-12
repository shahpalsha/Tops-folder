import 'package:assesment_first/Notebook/Books/Models/details.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:random_string/random_string.dart';
import 'Models/nonfic_book_model.dart';


class Nonfiction extends StatefulWidget {
  const Nonfiction({super.key});

  @override
  State<Nonfiction> createState() => _NonfictionState();
}

class _NonfictionState extends State<Nonfiction> {
  final user = FirebaseAuth.instance.currentUser;

  final nonfic_books = [
    'Biographies & Autobiographies Non-fiction',
    'Self-Help & Personal Development Non-fiction',
    'Business & Finance Non-fiction',
    'History & Politics Non-fiction',
    'Science & Technology Non-fiction',
    'Philosophy & Psychology Non-fiction'];

  String? value;
  String? gender;

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailidController = TextEditingController();
  TextEditingController _contactnoController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _cityController = TextEditingController();

  List<Map<String, String>> nonficList = [];

  Future nonfictionbook() async {
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

    final user = NonFictionBookModel(
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
      nonficList.add({
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

  @override
  Widget build(BuildContext context) {

    DropdownMenuItem<String> dropdownItem(String nonfictionbook) =>
        DropdownMenuItem(
            value: nonfictionbook,
            child: Text(nonfictionbook, style: TextStyle(fontSize: 17),)
        );

    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 35),
              Text('Non-Fiction Form', style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),

              TextFormField(
                controller: _nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'UserName',
                    labelStyle: TextStyle(
                        color: Colors.black, fontSize: 16),
                    suffixIcon: Icon(
                      Icons.person, color: Colors.deepPurple,),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.black26,
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.deepPurple.shade900
                        )
                    )
                ),
              ),

              SizedBox(height: 20,),

              TextFormField(
                controller: _emailidController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'Email id',
                    labelStyle: TextStyle(
                        color: Colors.black, fontSize: 16),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(
                      Icons.alternate_email, color: Colors.deepPurple,),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.black26,
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.amber
                        )
                    )
                ),
              ),

              SizedBox(height: 20,),

              TextFormField(
                controller: _contactnoController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Contact no.',
                    labelStyle: TextStyle(
                        color: Colors.black, fontSize: 16),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(Icons.contact_phone_outlined,
                      color: Colors.deepPurple,),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.black26,
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.amber
                        )
                    )
                ),
              ),

              SizedBox(height: 20,),

              TextFormField(
                controller: _ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: 'Age',
                    labelStyle: TextStyle(
                        color: Colors.black, fontSize: 16),
                    suffixIcon: Icon(
                      Icons.cake_outlined, color: Colors.deepPurple,),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.black26,
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.deepPurple.shade900
                        )
                    )
                ),
              ),

              SizedBox(height: 20,),

              Column(
                children: [
                  Text("Gender", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white)),
                  SizedBox(height: 10,),
                  Row(
                    children:
                    [
                      SizedBox(width: 20,),

                      Radio<String>(
                        fillColor: MaterialStateProperty.all(Colors.white),
                        value: "Male",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value;
                          });
                        },
                      ),
                      Text("Male",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),

                      SizedBox(width: 50,),

                      Radio<String>(
                        fillColor: MaterialStateProperty.all(Colors.white),
                        value: "Female",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value;
                          });
                        },
                      ),
                      Text("Female",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
                    ],
                  ),


                  SizedBox(height: 20,),

                  TextFormField(
                    controller: _cityController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'City',
                        labelStyle: TextStyle(
                            color: Colors.black, fontSize: 16),
                        suffixIcon: Icon(
                          Icons.location_city_sharp, color: Colors.deepPurple,),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.black26,
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.deepPurple.shade900
                            )
                        )
                    ),
                  ),

                  SizedBox(height: 20,),

                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(12),
                    child: DropdownButton<String>(
                      hint: Text(
                        'Select Book', style: TextStyle(fontSize: 16),),
                      isExpanded: true,
                      value: value,
                      underline: SizedBox(),
                      items: nonfic_books.map(dropdownItem).toList(),
                      onChanged: (newvalue) {
                        setState(() {
                          this.value = newvalue;
                        });
                      },
                    ),
                  ),


                  SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {
                      print('name : ${_nameController.text.trim()}');
                      print('email : ${_emailidController.text.trim()}');
                      print('Contact no. : ${_contactnoController.text.trim()}');
                      print('Age : ${_ageController.text.trim()}');
                      print('Gender : $gender');
                      print('City : ${_cityController.text.trim()}');
                      print('Selected book : $value');

                      nonfictionbook();
                    },
                    child: Text('Submit', style: TextStyle(fontSize: 16)),
                  ),
                  SizedBox(height: 10),

                  ElevatedButton(
                    onPressed: () {
                      _nameController.clear();
                      _emailidController.clear();
                      _contactnoController.clear();
                      _ageController.clear();
                      _cityController.clear();
                      setState(() {
                        value = null;
                        gender = null;
                      });
                    },
                    child: Text('Clear Form', style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}