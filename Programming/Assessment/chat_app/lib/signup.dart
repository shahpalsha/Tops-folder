import 'package:chat_app/homepage.dart';
import 'package:chat_app/registerpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key, required String title});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  Future<void> createaccount() async {
    String username = usernameController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (username.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
      // Attempt to create the user
      final result = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (result.user != null) {
        // Account created successfully
        usernameController.clear();
        emailController.clear();
        passwordController.clear();

        Fluttertoast.showToast(
          msg: "Account Created Successfully",
          backgroundColor: Colors.green,
          fontSize: 16.0,
          gravity: ToastGravity.CENTER,
          textColor: Colors.white,
          timeInSecForIosWeb: 1,
        );

        // Navigate to the homepage after successful registration
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => myhomepage(title: '')),
        );
      } else {
        // Handle the case where user was not created (this generally should not happen)
        Fluttertoast.showToast(
          msg: "User creation failed. Please try again.",
          backgroundColor: Colors.red,
          fontSize: 16.0,
          gravity: ToastGravity.CENTER,
          textColor: Colors.white,
          timeInSecForIosWeb: 1,
        );
      }
    } else {
      Fluttertoast.showToast(
        msg: "Please fill out all fields!",
        backgroundColor: Colors.red,
        fontSize: 16.0,
        gravity: ToastGravity.CENTER,
        textColor: Colors.white,
        timeInSecForIosWeb: 1,
      );
    }
  }

  // Future createaccount() async {
  //
  //   String username = usernameController.text.trim();
  //   String email = emailController.text.trim();
  //   String password = passwordController.text.trim();
  //
  //
  //   if (username.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
  //     await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //         email: emailController.text.trim(),
  //         password: passwordController.text.trim()
  //     );
  //     usernameController.clear();
  //     emailController.clear();
  //     passwordController.clear();
  //
  //     Fluttertoast.showToast(
  //         msg: "Account Created Successfully",
  //         backgroundColor: Colors.green,
  //         fontSize: 16.0,
  //         gravity: ToastGravity.CENTER,
  //         textColor: Colors.white,
  //         timeInSecForIosWeb: 1
  //     );
  //   }
  // }

  bool _ispasswordvisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SafeArea(
            child: SingleChildScrollView(
            child: Container(
              height: 550,
              width: 330,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.70),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    child: Image.asset('assets/images/chat.png'),
                  ),
                  SizedBox(height: 8),

                  Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Create a new account",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 16),

                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: usernameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(color: Colors.black),
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: Icon(Icons.person,color: Colors.teal,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  // Email Field
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      labelStyle: TextStyle(color: Colors.black),
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: Icon(Icons.alternate_email_sharp,color: Colors.teal,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  TextFormField(
                    obscureText: !_ispasswordvisible,
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.black),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: Icon(Icons.key,color: Colors.teal,),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _ispasswordvisible ? Icons.visibility : Icons.visibility_off,
                          color: Colors.teal,
                        ),
                        onPressed: () {
                          setState(() {
                            _ispasswordvisible = !_ispasswordvisible;
                          });
                        },
                    ),
                    )
                  ),
                  SizedBox(height: 20),

                  // Sign Up Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      createaccount();

                      String username = usernameController.text.trim();
                      String email = emailController.text.trim();
                      String password = passwordController.text.trim();

                      if (email.isEmpty || password.isEmpty || username.isEmpty) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Missing Fields"),
                            content: Text("Please fill out all fields!"),
                            backgroundColor: Colors.teal.shade50,
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text("OK", style: TextStyle(color: Colors.teal)),
                              ),
                            ],
                          ),
                        );
                      } else if (!email.contains('@') || !email.contains('.')) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Invalid Email"),
                            content: Text("Please enter a valid email address!"),
                            backgroundColor: Colors.teal.shade50,
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text("OK", style: TextStyle(color: Colors.teal)),
                              ),
                            ],
                          ),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => myhomepage(title: '')),
                        );
                      }
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 15),

                  // Already have an account?
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Myregister(title: '')),
                      );
                    },
                    child: Text(
                      'Already have an account? Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      )
    );
  }
}
