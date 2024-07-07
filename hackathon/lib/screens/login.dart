import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hackathon/mywidget/textfeild.dart';
import 'package:hackathon/screens/bottom.dart';
import 'package:hackathon/screens/homepage.dart';
import 'package:hackathon/screens/products.dart';
import 'package:hackathon/screens/singup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailcontroller = TextEditingController();
    final TextEditingController passwordcontroller = TextEditingController();

    signInWithEmailAndPassword() async {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailcontroller.text, password: passwordcontroller.text);
       return Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Bottom()));
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

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: 200, child: Image(image: AssetImage('image/Login.png'))),
              SizedBox(
                height: 20,
              ),
              Image(image: AssetImage('image/Login2.png')),
              SizedBox(
                height: 20,
              ),
              Image(image: AssetImage('image/login3.png')),
              SizedBox(
                height: 50,
              ),
              Text('Username/Email'),
              MyTextField(
                  controller: emailcontroller,
                  hintText: '🔒 Muskkan Email',
                  obscureText: false),
              SizedBox(
                height: 20,
              ),
              Text('Password'),
              MyTextField(
                  controller: passwordcontroller,
                  hintText: '🔒 Muskkan Password',
                  obscureText: true),
              Container(
                alignment: Alignment.bottomRight,
                height: 20,
                child: Text(
                  'Lupa password',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, elevation: 0),
                  onPressed: () {
                    signInWithEmailAndPassword;
                     Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const Singup()));
                  },
                  child: Image(
                    image: AssetImage('image/loginBotton.png'),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
