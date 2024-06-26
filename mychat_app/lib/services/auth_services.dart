import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthServices extends ChangeNotifier {
  // instances of auth
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
// instances of firestore
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;

  //sign in
  Future<UserCredential> signInWithEmailandPassword(
      String email, String password) async {
    try {
      // sign in
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      // add a new document for the user in users collection if it doesnt already exits
      _fireStore
          .collection('users')
          .doc(userCredential.user!.uid)
          .set({'uid': userCredential.user!.uid, 'email':email},
          SetOptions(merge: true));
      return userCredential;

    }
// catch any error
    on FirebaseException catch (e) {
      throw Exception(e.code);
    }
  }

  // create new user
  Future<UserCredential> signUpWithEmailandPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      // after creating user, create a new document for the user in the user collection
      _fireStore
          .collection('users')
          .doc(userCredential.user!.uid)
          .set({'uid': userCredential.user!.uid, 'email':email});
      return userCredential;
    } on FirebaseException catch (e) {
      throw Exception(e.code);
    }
  }

  //sign out
  Future<void> signOut() async {
    return await FirebaseAuth.instance.signOut();
  }
}
