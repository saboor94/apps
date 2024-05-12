import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  File? imageFile;
  String? fileName;

  getFromGallery() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
        fileName = pickedFile.name;
      });
      await uploadImagetoFirebase(imageFile!);
    }
  }

  getFromCamera() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  Future<void> uploadImagetoFirebase(File imageFile) async {
    try {
      await FirebaseStorage.instance
          .ref()
          .child('test/')
          .child(fileName!)
          .putFile(imageFile);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              getFromGallery();
            },
            child: const Text("PICK FROM GALLERY"),
          ),
          Container(
            height: 40.0,
          ),
          ElevatedButton(
            onPressed: () {
              getFromCamera();
            },
            child: const Text("PICK FROM CAMERA"),
          ),
          if (imageFile != null) ...[
            Image.file(
              imageFile!,
              fit: BoxFit.cover,
            ),
            Text('$fileName'),
          ]
        ],
      ),
    );
  }
}