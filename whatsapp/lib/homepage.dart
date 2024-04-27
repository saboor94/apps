import 'package:flutter/material.dart';
import 'package:whatsapp/call.dart';
import 'package:whatsapp/chats.dart';
import 'package:whatsapp/main.dart';
import 'package:whatsapp/status.dart';

void main() {
  runApp(const MyApp());
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text('WhatsApp'),
            titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
            actions: [
              getbuttonicon(Icons.camera_alt_outlined),
              getbuttonicon(Icons.search),
              getbuttonicon(Icons.more_vert)
            ],
            bottom: const TabBar(
              tabs: [
                Icon(Icons.people),
                Text('Chats'),
                Text('Status'),
                Text('Calls'),
              ],
              labelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.white,
              labelStyle: TextStyle(fontSize: 15),
              unselectedLabelColor: Colors.grey,
              indicatorWeight: 3,
            ),
          ),
          body: TabBarView(
            children: [
               Scaffold(body:Center(child: Center(child: Image.asset('image/community.png'),)),),
              const Chatpage(),
              const Status(),
              const Calls()
            ],
          )),
    );
  }
}

getbuttonicon(icon) {
  return IconButton(onPressed: () {}, icon: Icon(icon), color: Colors.white);
}
