import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'Home Page.dart';
import 'Sign Up Page.dart';

class MySignIn extends StatefulWidget {
  const MySignIn({super.key, required String title});

  @override
  State<MySignIn> createState() => _MySignInState();
}

class _MySignInState extends State<MySignIn> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Sign In Page'),
                backgroundColor: Colors.red.shade200,
        ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200,),
            Text('Sign In', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            SizedBox(height: 50,),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                    labelText: 'Email Id',
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
                controller: _passController,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password',
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

            SizedBox(height: 60,),

            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: ''),));
              Fluttertoast.showToast(
                  msg: "Login Successfully",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.grey,
                  textColor: Colors.black,
                  fontSize: 16.0);
            },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  child: Text('Sign In', style: TextStyle(fontSize: 25, color: Colors.white),),
                )),

            SizedBox(height: 20,),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MySignUp(title: ''),));
              },
              child: Text('Create new account', style: TextStyle(fontSize: 20, color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}
