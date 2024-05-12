import 'package:cloud_firestore/cloud_firestore.dart';

class AppServices {
  var firebaseInstance = FirebaseFirestore.instance;
  static const String collectionName = 'users';

  Future getData() async {
    CollectionReference data = firebaseInstance.collection(collectionName);
    return data.get();
  }


  // Future deletedata() {
  //   CollectionReference data = firebaseInstance.collection(collectionName);
  //   return data.
  // }
}
