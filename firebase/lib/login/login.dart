import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();


class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [
        Text('email'),
        TextField(controller: emailController,),
        Text('password'),
        TextField(controller: passwordController,),
        ElevatedButton(onPressed: (){}, child:Text('login'))
      ],),),
    );
  }
}