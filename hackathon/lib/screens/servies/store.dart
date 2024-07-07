import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Services1 {
  var firestoreInstance = FirebaseFirestore.instance;
  static const String collectionName = 'products';

  Future getData() async {
    CollectionReference data = firestoreInstance.collection(collectionName);
    return data.get();
  }

 delete(id){
   CollectionReference data = firestoreInstance.collection(collectionName);
   return data.doc(id).delete() .then((value) => print('delete'))
        .catchError((onError) => print('error'));
 }

  
}
