import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/mywidget/textfeild.dart';
import 'package:hackathon/screens/bottom.dart';
import 'package:hackathon/screens/homepage.dart';

class Singup extends StatefulWidget {
  const Singup({super.key});

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailcontroller = TextEditingController();
    final TextEditingController passwordcontroller = TextEditingController();

    createUserWithEmailAndPassword() async {
      try {
        final credential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailcontroller.text,
          password: passwordcontroller.text,
        );
        return Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Bottom()),
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

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: 200,
                  child: Image(image: AssetImage('image/Login.png'))),
              SizedBox(
                height: 50,
              ),
              Image(image: AssetImage('image/Signup.png')),
              SizedBox(
                height: 60,
              ),
              Image(image: AssetImage('image/signup1.png')),
              SizedBox(
                height: 30,
              ),
              Text('NISN'),
              MyTextField(
                  controller: emailcontroller,
                  hintText: 'Nomor NISN',
                  obscureText: false),
              SizedBox(
                height: 20,
              ),
              Text('NISN'),
              MyTextField(
                  controller: passwordcontroller,
                  hintText: 'Nomor NISN',
                  obscureText: true),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, elevation: 0),
                  onPressed: () {
                    createUserWithEmailAndPassword();
                  },
                  child: Image(
                    image: AssetImage('image/signupBotton (1).png'),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
