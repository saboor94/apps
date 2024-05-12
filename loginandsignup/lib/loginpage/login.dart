import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  signInWithEmailAndPassword() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
       return print('not found');
        // return ScaffoldMessenger.of(context).showSnackBar(
        //     const SnackBar(content: Text('No user found for that email.')));
      } else if (e.code == 'wrong-password') {
       return print('inc password');
        // return ScaffoldMessenger.of(context).showSnackBar(
        //     SnackBar(content: Text('Wrong password provided for that user.')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
                key: _formKey,
                child: OverflowBar(
                  children: [
                    const Text("email"),
                    TextFormField(
                      controller: _emailController,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return 'Email is empty';
                        }
                        return null;
                      },
                    ),
                    const Text('password'),
                    TextFormField(
                      controller: _passwordController,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return 'password is empty';
                        }
                        return null;
                      },
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          signInWithEmailAndPassword();
                        }
                      },
                      child: const Text('login'),
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('signup'))
                  ],
                ))),
      ),
    );
  }
}
