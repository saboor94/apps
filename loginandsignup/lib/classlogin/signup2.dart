import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loginandsignup/loginpage/login.dart';

class Signupclass extends StatefulWidget {
  const Signupclass({super.key});

  @override
  State<Signupclass> createState() => _SignupclassState();
}

class _SignupclassState extends State<Signupclass> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  register() {
    Map data = {'email': _emailController, 'password': _passwordController};
  }

  registeruser() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      print(credential);
      return Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'email'),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'password'),
          ),
          ElevatedButton(
              onPressed: () {
                registeruser();
              },
              child: Text('Register')),
          ElevatedButton(
              onPressed: () {}, child: Text('Already have a account'))
        ],
      ),
    );
  }
}
