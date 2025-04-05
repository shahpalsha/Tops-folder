import 'package:assesment_first/Notebook/Notebook.dart';
import 'package:flutter/material.dart';
import 'package:assesment_first/Signup.dart';

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
      backgroundColor: Colors.deepPurple.shade100,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome User,',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold, color: Colors.deepPurple.shade900),
              ),
              SizedBox(height: 15),
              Text(
                'Login Page',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.deepPurple.shade900),
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
                    keyboardType: TextInputType.emailAddress
                    ,
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Enter email',
                      border: InputBorder.none,
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
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  String email = emailController.text.trim();
                  String password = passwordController.text.trim();

                  if (email.isEmpty && password.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Missing Fields"),
                          content: Text("Please enter your email and password!"),
                          backgroundColor: Colors.deepPurple.shade100,
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text("OK", style: TextStyle(color: Colors.deepPurple)),
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
                          backgroundColor: Colors.deepPurple.shade100,
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text("OK", style: TextStyle(color: Colors.deepPurple)),
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
                          title: Text("Missing Password"),
                          content: Text("Please enter your password!"),
                          backgroundColor: Colors.deepPurple.shade100,
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text("OK", style: TextStyle(color: Colors.deepPurple)),
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Mynotebook(title: '')),
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
                      color: Colors.deepPurple.shade900,
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
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateAccount()),
                  );
                },
                child: Text(
                  'Create Account',
                  style: TextStyle(fontSize: 23, color: Colors.deepPurple.shade600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
