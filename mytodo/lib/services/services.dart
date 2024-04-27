

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class Appservices {
  var firebaseInstance = FirebaseFirestore.instance;
  static const String collectionName = 'mytodo';
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  Future getdata() {
    CollectionReference data = firebaseInstance.collection(collectionName);
    return data.get();
  }

  adddata() {
    CollectionReference mytodo =
        FirebaseFirestore.instance.collection('mytodo');
    mytodo
        .add({
          'titile': titleController.text,
          'description': descriptionController.text
        })
        .then((value) => print('added'))
        .catchError((error) => print("Failed to add user: $error"));
  }

  myADDtextFieldTitle() {
    return TextField(
      controller: titleController,
      decoration:const InputDecoration(hintText: 'TITLE'),
    );
  }

  myADDtextFieldDESCR() {
    return TextField(
      controller: descriptionController,
      decoration:const InputDecoration(hintText: 'Description'),
    );
  }
}
