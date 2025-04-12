import 'package:flutter/material.dart';
import 'package:travel_guidance_app/homepage.dart';
import 'SignUp.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required String title});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade100,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Welcome Message
              Text(
                'Travel Guide',
                style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Login to Your Account',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 40),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Enter email',
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.email, color: Colors.blueAccent),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter password',
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.lock, color: Colors.blueAccent),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Login Button
              InkWell(
                onTap: () {
                  String email = emailController.text.trim();
                  String password = passwordController.text.trim();

                  if (email.isEmpty && password.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Missing Fields",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          content: Text("Please enter your email and password!",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          backgroundColor: Colors.blueAccent.shade100,
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text("OK", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white)),
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
                          title: Text("Invalid Email",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          content: Text("Please enter a valid email address!",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          backgroundColor: Colors.blueAccent.shade100,
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text("OK", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white)),
                            ),
                          ],
                        );
                      },
                    );
                  } else if (password.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Missing Password",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          content: Text("Please enter your password!",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          backgroundColor: Colors.blueAccent.shade100,
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text("OK", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blueAccent)),
                            ),
                          ],
                        );
                      },
                    );
                  }
                  // Specific email and password check
                  else if (email == 'shahpalsha@gmail.com' && password == 'palpal19') {
                    // Login Success
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Myhomepage(title: '')),
                    );
                  }
                  else {
                    // Incorrect login credentials
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Login Failed",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          content: Text("Incorrect email or password!",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          backgroundColor: Colors.blueAccent.shade100,
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text("OK", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white)),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blueAccent.shade400,
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Create Account Link
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateAccount()),
                  );
                },
                child: Text(
                  'Create Account',
                  style: TextStyle(fontSize: 23, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
