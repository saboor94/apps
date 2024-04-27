// ignore_for_file: prefer_initializing_formals

import 'package:flutter/material.dart';
import 'package:whatsapp/chats.dart';

class Statuslist {
  String? title;
  String? logoimage;
  String? image;
  String? subtitle;

  Statuslist(
    title,
    subtitle,
    image,
    logoimage,
  ) {
    this.title = title;
    this.subtitle = subtitle;
    this.logoimage = logoimage;
    this.image = image;
  }
}

String arylogoimage = 'image/ary.png';
String arynewspic = 'image/arynewspic.jpeg';
String ptiimage = 'image/pti.jpeg';
String imrankhan = 'image/imrankhan.jpeg';
String geo = 'image/geonews.jpg';
String geonews = 'image/geonewspic.avif';
List<Statuslist> status = [
  Statuslist(
      'ARY News', '🔗 https:/fb.watch/qniQt4-IAf/', arynewspic, arylogoimage),
  Statuslist('PTI Official', 'Imran khan Prime Minister of Pakistan', imrankhan,
      ptiimage),
  Statuslist('Geo News', 'Har Pal Pe Nazr', geonews, geo),
];

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            const SizedBox(height: 10),
            listtilebanner('Status', Icons.more_vert),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 90,
                  child: Column(
                    children: [
                      statusadd(),
                      // CircleAvatar(
                      //   radius: 30,
                      //   backgroundImage: AssetImage(whatsappimage),
                      // ),
                      const Text('My status', style: TextStyle(fontSize: 12))
                    ],
                  ),
                ),
                SizedBox(
                  width: 90,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(snapchatimage),
                    
                      ),
                      const Text('Snapchat', style: TextStyle(fontSize: 12))
                    ],
                  ),
                ),
                SizedBox(
                  width: 90,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(instagramimage),
                      ),
                      const Text('Instagram', style: TextStyle(fontSize: 12))
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            listtilebanner('Channel', Icons.add),
            statusitems(),
          ],
        ),
        floatingActionButton: floatingActionButton(Icons.camera_alt_outlined),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat);
  }
}

listtilebanner(name, icon) {
  return ListTile(
      title: Text(name),
      titleTextStyle:
          const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      trailing: Icon(icon),
      visualDensity: const VisualDensity(vertical: -4));
}

statusadd() {
  return const CircleAvatar(
    backgroundImage: AssetImage('image/whatsapp.webp'),
    radius: 30,
    child: Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.teal,
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 15,
              )),
        ),
      ],
    ),
  );
}

statusitems() {
  return ListView.builder(
      shrinkWrap: true,
      itemCount: status.length,
      itemBuilder: (context, index) {
        return ListTile(
          visualDensity: const VisualDensity(vertical: 4),
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(status[index].logoimage!),
          ),
          title: Text(
            status[index].title!,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(status[index].subtitle!),
          trailing: CircleAvatar(
            backgroundImage: AssetImage(status[index].image!),
          ),
        );
      });
}
