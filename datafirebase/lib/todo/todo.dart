import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:datafirebase/future/future.dart';
import 'package:flutter/material.dart';

class USerVeiw extends StatefulWidget {
  const USerVeiw({super.key});

  @override
  State<USerVeiw> createState() => _USerVeiwState();
}

class _USerVeiwState extends State<USerVeiw> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userController = TextEditingController();
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  adduser() async {
    await users
        .add({"email": _emailController.text, 'password': _userController.text})
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
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
            controller: _userController,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'password'),
          ),
          ElevatedButton(
              onPressed: () async {
                await adduser();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text('Add Users')),
        ],
      ),
    );
  }
}
