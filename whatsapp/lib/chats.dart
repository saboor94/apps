// ignore_for_file: prefer_initializing_formals

import 'package:flutter/material.dart';

class Chats {
  String? title;
  String? subtitle;
  String? image;
  String? time;
  String? statustime;
  dynamic callicon;
  dynamic iconcolor;
  Chats(String title, String subtitle, String image, String time,
      String statustime, dynamic callicon, dynamic iconcolor) {
    this.title = title;
    this.subtitle = subtitle;
    this.image = image;
    this.time = time;
    this.statustime = statustime;
    this.callicon = callicon;
    this.iconcolor = iconcolor;
  }
}

String facebookimage = 'image/facebook.avif';
String whatsappimage = 'image/whatsapp.webp';
String instagramimage = 'image/instagram.png';
String snapchatimage = 'image/snapchat.png';
String ximage = 'image/x.png';

List<Chats> chat = [
  Chats('Facebook', "Whats on your mind?", facebookimage, '12:30pm', '15 minutes ago',
      Icons.call_missed, Colors.red),
  Chats('Whatsapp', 'Simple Reliable Private',whatsappimage, '12:31pm', '30 minutes ago',
      Icons.call_made, Colors.green),
  Chats('Instagram', "Capture and Share the World's Moments",instagramimage, '12:32pm', '45 minutes ago',
      Icons.call_missed, Colors.red),
  Chats('Snapchat', "Life's more fun when you live in the moment",snapchatimage, '12:33pm', '2 hour ago',
      Icons.call_received, Colors.green),
  Chats('X', 'Blaze your glory!',ximage, '12:34pm', '1 hour ago',
      Icons.call_missed, Colors.red)
];

class Chatpage extends StatelessWidget {
  const Chatpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: chat.length,
            itemBuilder: (context, index) {
              var title = chat[index].title;
              var subtitle = chat[index].subtitle;
              var image = chat[index].image;
              var time = chat[index].time;

              return ListTile(
                title: Text(title!),
                titleTextStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18),
                subtitle: Text(subtitle!),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(image!),
                  
                  
                ),
                trailing: Text(time!),
                //visualDensity: const VisualDensity(vertical: -2),
              );
            },
          ),
        ],
      ),
      floatingActionButton: floatingActionButton(Icons.message_rounded),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

floatingActionButton(icon) {
  return FloatingActionButton(
    onPressed: () {},
    backgroundColor: Colors.teal,
    child: Icon(
      (icon),
      color: Colors.white,
    ),
  );
}
