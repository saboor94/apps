import 'package:flutter/material.dart';
import 'package:mytodo/services/auth.dart';
import 'package:mytodo/wigdets.dart/textfield.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}
TextEditingController signInUsernameController = TextEditingController();
TextEditingController signInPasswordController = TextEditingController();
TextEditingController signInConfrimPasswordController = TextEditingController();

class _SignInState extends State<SignIn> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text('Username'),
                const SizedBox(
                  height: 10,
                ),
                myTextFieldUsername(signInUsernameController),
                const SizedBox(
                  height: 20,
                ),
                const Text('Password'),
                const SizedBox(
                  height: 10,
                ),
                myTextFieldPassword(signInPasswordController),
                const SizedBox(
                  height: 20,
                ),
                const Text('Confrim Password'),
                const SizedBox(
                  height: 10,
                ),
                myTextFieldPassword(signInConfrimPasswordController),
                const SizedBox(
                  height: 40,
                ),
                Center(child: myElevatedButtonSignIn() )
              ],
            ),
          ),
        ));
  }
  myElevatedButtonSignIn() {
  return SizedBox(
    height: 50,
    width: 300,
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            backgroundColor: const Color.fromARGB(218, 145, 83, 199)),
        onPressed: () {
          if (signInPasswordController.text ==
              signInConfrimPasswordController.text) {
            createUserWithEmailAndPassword(context);
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text(" “Password & Confirm Password do not match”.")));
          }
          signInUsernameController.clear();
          signInPasswordController.clear();
          signInConfrimPasswordController.clear();
          setState(() {
            
          });
        },
        child: const Text(
          'Register',
          style: TextStyle(fontSize: 20, color: Colors.white),
        )),
  );
}
}
