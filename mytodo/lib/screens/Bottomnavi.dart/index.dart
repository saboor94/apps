import 'package:flutter/material.dart';
import 'package:mytodo/services/services.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    Appservices _services = Appservices();
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: FutureBuilder(
        future: _services.getdata(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snap) {
          if (snap.connectionState == ConnectionState.waiting) {
            return Center(
              child: Text('loading....'),
            );
          } else if (snap.hasData == false) {
            return Text('No Data Availabe');
          } else {
            return ListView.builder(
              shrinkWrap: true,
                itemCount: snap.data!.docs.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(5),
                    child: ListTile(
                    
                      tileColor: Colors.grey[800],
                      leading: Icon(Icons.circle_outlined),
                      title: Text(
                        (snap.data!.docs[index]['titile']),
                        style: TextStyle(fontSize: 20),
                      ),
                      subtitle: Text((snap.data!.docs[index]['description'])),
                      trailing: 
                        
                       Icon(Icons.flag),

                    ),
                  );
                  //);
                });
          }
        },
      ),
    );
  }
}
// Text((snap.data!.docs[index]['titile'])),
//                         Text((snap.data!.docs[index]['description']))