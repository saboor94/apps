import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class _Login2State extends State<Login2> {
  signInWithEmailAndPassword() async {
    try {
      // var res = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      //     email: emailController.text, password: passwordController.text);

      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text);
    } on FirebaseAuthException catch (e) {
      if (e.message == "The email address is badly formatted." ) {
       // ignore: use_build_context_synchronously
       return ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('No user found for that email.')));
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
      

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: 'Email'),
          ),
          TextField(
            controller: _passwordController,
            decoration: const InputDecoration(labelText: 'password'),
          ),
          ElevatedButton(
              onPressed: () {
                signInWithEmailAndPassword();
                setState(() {
                  
                });
              },
              child: const Text('login')),
          ElevatedButton(onPressed: () {}, child: const Text('sign up'))
        ],
      ),
    );
  }
}
