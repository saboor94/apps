import 'package:flutter/material.dart';
import 'package:whatsapp/chats.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.teal,
              child: Center(
                  child: Text(
                '🔗',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
            title: Text(
              'Create call link',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Share a link for your WhatsApp call'),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                var title = chat[index].title;
                var image = chat[index].image;
                var time = chat[index].statustime;
                var callicon = chat[index].callicon;
                var iconcolor = chat[index].iconcolor;

                return ListTile(
                  // visualDensity: const VisualDensity(vertical: -4),
                  title: Text(title!),
                  titleTextStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18),
                  subtitle: Row(
                    children: [
                      Icon(
                        callicon,
                        color: iconcolor,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(time!),
                    ],
                  ),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(image!),
                  ),
                  trailing: const Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                );
              },
              itemCount: chat.length),
        ],
      ),
      floatingActionButton: floatingActionButton(Icons.add_call),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
