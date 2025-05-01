import 'package:chat_app/models/all_user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';

class CreateUser extends StatefulWidget {
  const CreateUser({super.key});

  @override
  State<CreateUser> createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _statusController = TextEditingController();

  Future<void> createNewUser() async {
    String _id = randomAlphaNumeric(10);
    String _name = _nameController.text.trim();
    String _status = _statusController.text.trim();

    if (_name.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Name cannot be empty')),
      );
      return;
    }

    final userModel = ChatUserModel(
      id: _id,
      name: _name,
      status: _status.isNotEmpty
          ? _status
          : 'Hey there! I am using Chat App.',
      createdAt: DateTime.now(),
    );

    await FirebaseFirestore.instance
        .collection('all users')
        .doc(_id)
        .set(userModel.toJson());

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('User created successfully!')),
    );

    _nameController.clear();
    _statusController.clear();

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create New User',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Enter user name',
                filled: true,
                fillColor: Colors.teal[50],
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _statusController,
              decoration: InputDecoration(
                hintText: 'Enter status (optional)',
                filled: true,
                fillColor: Colors.teal[50],
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: createNewUser,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: Text(
                'Create User',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
