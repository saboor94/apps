import 'package:flutter/material.dart';
import 'package:mytodo/services/auth.dart';
import 'package:mytodo/wigdets.dart/textfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}
TextEditingController loginUsernameController = TextEditingController();
TextEditingController loginPasswordController = TextEditingController();
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Login',
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
            myTextFieldUsername(loginUsernameController),
            const SizedBox(
              height: 20,
            ),
            const Text('Password'),
            const SizedBox(
              height: 10,
            ),
            myTextFieldPassword(loginPasswordController),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: myElevatedButtonLogin(context),
            ),
          ],
        ),
      ),
    );
  }
  myElevatedButtonLogin(context) {
  return SizedBox(
    height: 50,
    width: 300,
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            backgroundColor: const Color.fromARGB(218, 145, 83, 199)),
        onPressed: () {
          signInWithEmailAndPassword(context);
          loginPasswordController.clear();
          loginUsernameController.clear();
          setState(() {
            
          });
        },
        child: const Text(
          'Login',
          style: TextStyle(fontSize: 20, color: Colors.white),
        )),
  );
}
}
