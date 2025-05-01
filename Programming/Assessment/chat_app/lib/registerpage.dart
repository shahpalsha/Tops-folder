import 'package:chat_app/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

class Myregister extends StatefulWidget {
  const Myregister({super.key, required String title});

  @override
  State<Myregister> createState() => _MyregisterState();
}

class _MyregisterState extends State<Myregister> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _ispasswordvisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login.png'), // your background
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                height: 520,
                width: 330,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.70), // semi-transparent background
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      child: Image.asset('assets/images/chat.png'),
                    ),
                    SizedBox(height: 8),

                    // Page Title
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                    // Subtitle
                    Text(
                      "Please sign in to continue",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 16),

                    // Email Field
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        labelStyle: TextStyle(color: Colors.black),
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: Icon(Icons.alternate_email_sharp, color: Colors.teal),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    // Password Field
                    TextFormField(
                      obscureText: !_ispasswordvisible, // hides password if false
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
                      ),
                    ),

                    // Forgot Password
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          _resetPassword();
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),

                    // Sign In Button
                    ElevatedButton(
                      onPressed: () async {
                        String email = emailController.text.trim();
                        String password = passwordController.text.trim();

                        if (email.isEmpty || password.isEmpty) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Missing Fields"),
                                content: Text("Please enter your email and password!"),
                                backgroundColor: Colors.teal.shade100,
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text("OK", style: TextStyle(color: Colors.white)),
                                  ),
                                ],
                              );
                            },
                          );
                        } else if (!email.contains('@') || !email.contains('.')) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Invalid Email"),
                                content: Text("Please enter a valid email address!"),
                                backgroundColor: Colors.teal.shade100,
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text("OK", style: TextStyle(color: Colors.white)),
                                  ),
                                ],
                              );
                            },
                          );
                        } else {
                          // Attempt to sign in the user
                          final result = await FirebaseAuth.instance.signInWithEmailAndPassword(
                            email: email,
                            password: password,
                          );

                          if (result.user != null) {
                            // Successful login
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => myhomepage(title: '')),
                            );
                          } else {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Login Failed"),
                                  content: Text("Incorrect email or password!"),
                                  backgroundColor: Colors.teal.shade100,
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: Text("OK", style: TextStyle(color: Colors.white)),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        }
                      },
                      child: Center(
                        child: Text(
                          'Sign in',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        padding: EdgeInsets.symmetric(horizontal: 80, vertical: 12),
                      ),
                    ),

                    SizedBox(height: 15),

                    // Create Account
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage(title: 'title'),));
                      },
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Function to send the reset password email
  void _resetPassword() async {
    String email = emailController.text.trim();

    if (email.isEmpty) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Missing Email"),
            content: Text("Please enter your email to reset password!"),
            backgroundColor: Colors.teal.shade100,
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("OK", style: TextStyle(color: Colors.white)),
              ),
            ],
          );
        },
      );
    } else {
      try {
        await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Password Reset Email Sent"),
              content: Text("We have sent a password reset link to $email. Please check your inbox."),
              backgroundColor: Colors.teal.shade100,
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("OK", style: TextStyle(color: Colors.white)),
                ),
              ],
            );
          },
        );
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Error"),
              content: Text("An error occurred. Please try again later."),
              backgroundColor: Colors.teal.shade100,
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("OK", style: TextStyle(color: Colors.white)),
                ),
              ],
            );
          },
        );
      }
    }
  }
}
