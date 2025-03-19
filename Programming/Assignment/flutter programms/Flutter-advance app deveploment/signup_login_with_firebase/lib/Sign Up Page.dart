import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'Home Page.dart';

class MySignUp extends StatefulWidget {
  const MySignUp({super.key, required String title});

  @override
  State<MySignUp> createState() => _MySignUpState();
}

class _MySignUpState extends State<MySignUp> {

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  TextEditingController _cpassController = TextEditingController();

  Future createaccount() async {
    if (_passController.text.trim() == _cpassController.text.trim())
      {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: _emailController.text.trim(),
            password: _passController.text.trim());

        Fluttertoast.showToast(
            msg: "Created Successfully",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.grey,
            textColor: Colors.black,
            fontSize: 16.0);

        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => MyHomePage(title: '',),
            )
        );
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200,),

            Text('Register Account', style: TextStyle(fontSize: 35, color: Colors.black, fontWeight: FontWeight.bold),),

            SizedBox(height: 50,),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                    suffixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:BorderSide(
                      width: 2,
                      color: Colors.red
                    )
                  )
                ),
              ),
            ),

            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                    labelText: 'Email Id',
                    suffixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:BorderSide(
                            width: 2,
                            color: Colors.red
                        )
                    )),
              ),
            ),

            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                controller: _passController,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.key),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:BorderSide(
                            width: 2,
                            color: Colors.red
                        )
                    )),
              ),
            ),

            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                controller: _cpassController,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    suffixIcon: Icon(Icons.key),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:BorderSide(
                            width: 2,
                            color: Colors.red
                        )
                    )),
              ),
            ),
            
            SizedBox(height: 50,),
            
            ElevatedButton(
                onPressed: () {
                  createaccount();
              // print('name: ${_nameController.text}');
              // print('email id: ${_emailController.text}');
              // print('password: ${_passController.text}');
              // print('confirm password: ${_pcmController.text}');
            } ,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  child: Text('Sign Up', style: TextStyle(fontSize: 25, color: Colors.white),),
                ))
          ],
        )
      ),
    );
  }
}
