import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mytodo/screens/Bottomnavi.dart/bottom_navi.dart';
import 'package:mytodo/screens/LoginAndREG/login.dart';
import 'package:mytodo/screens/LoginAndREG/signIn.dart';


signInWithEmailAndPassword(context) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: loginUsernameController.text, password: loginPasswordController.text);
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("login successful")));
    
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomeView()),
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('No user found for that email.')));
    } else if (e.code == 'wrong-password') {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Wrong password provided for that user.')));
    }
  }
}

createUserWithEmailAndPassword(context) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: signInUsernameController.text, password: signInPasswordController.text);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomeView()),
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('The password provided is too weak.')));
    } else if (e.code == 'email-already-in-use') {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('The account already exists for that email.')));
    }
  } catch (e) {
    print(e);
  }
}
