import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:datafirebase/services/serives.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AppServices _services = AppServices();

  TextEditingController emailController = TextEditingController();

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  var docID;

  savedata() {
    return users
        .doc(docID)
        .update({'email': emailController.text})
        .then((value) => print('updated'))
        .catchError((onError) => print('error'));
  }

  deletedata(deleteid) {
    docID = deleteid;
    return users
        .doc(deleteid)
        .delete()
        .then((value) => print('delete'))
        .catchError((onError) => print('error'));
  }

  editdata(docId, email) {
    docID = docId;
    emailController.text = email;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: emailController,
        ),
        actions: [
          IconButton(
              onPressed: () {
                deletedata(docID);
                setState(() {});
              },
              icon: Icon(Icons.save))
        ],
        backgroundColor: Colors.orange,
      ),
      body: FutureBuilder(
        future: _services.getData(),
        builder: (context, AsyncSnapshot snap) {
          if (snap.connectionState == ConnectionState.waiting) {
            return Center(
              child: Text('loading....'),
            );
          } else if (snap.hasData == false) {
            return Text('No Data Availabe');
          } else {
            return ListView.builder(
                itemCount: snap.data!.docs.length,
                itemBuilder: (context, index) {
                  var data = snap.data!.docs[index];
                  var docId = snap.data!.docs[index].id;
                  return ListTile(
                    title: Text(data['email']),
                    trailing: ElevatedButton(
                        onPressed: () {
                          editdata(docId, data['email']);
                        },
                        child: Icon(Icons.edit)),
                  );
                });
          }
        },
      ),
    );
  }
}
// Column(children: [Text((snap.data!.docs[index]['email'])),
//                   Text((snap.data!.docs[index]['password']))],);
// // class Future extends StatefulWidget {
//   const Future({super.key});

//   @override
//   State<Future> createState() => _FutureState();
// }

// class _FutureState extends State<Future> {
//   Future({super.key})
//   AppServices _services = AppServices();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('home'),backgroundColor: Colors.orange,),
//       body: FutureBuilder(future:_services.getData(),builder:(context,AsyncSnapshot snap){
//         return ListView.builder(itemCount:snap.data!.docs.length ,itemBuilder:(context,index){
//           return Text(snap.data!.docs[index]['email']);

//         });
//       }  ,),
//     );
//   }
// }