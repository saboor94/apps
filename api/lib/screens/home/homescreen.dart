import 'package:api/screens/home/homeviewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => Homeviewmodel(),
        builder: (context, viewmodell, child) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
            ),
            body: Column(
              children: [
                const Text('home Screen'),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('contact Screen'),
                ),
                ElevatedButton(
                    onPressed: () {
                      viewmodell.getUsers();
                    },
                    child: const Text('about Screen')),
                Expanded(
                  child: ListView.builder(
                      itemCount: viewmodell.users.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          trailing: ElevatedButton(
                            onPressed: () {
                              viewmodell.getuserbyid(viewmodell.users[index]['id']);
                            },
                            child: const Text('details'),
                          ),
                          title: Text(viewmodell.users[index]['name']),
                          subtitle: Text(viewmodell.users[index]['email']),
                        );
                      }),
                )
              ],
            ),
          );
        });
  }
}
