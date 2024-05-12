import 'package:flutter/material.dart';
import 'package:newproject/screens/about/about.dart';
import 'package:newproject/screens/contact/contact.dart';
import 'package:newproject/screens/dashboad/page1.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
    
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            bottom: const TabBar(
              tabs: [
                Icon(Icons.home),
                Icon(Icons.contacts),
                Icon(Icons.account_box),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              
              const Dashboard(),
              const Contact(),
              const About()
            ],
          )),
    );
  }
}

getbuttonicon(icon) {
  return IconButton(onPressed: () {}, icon: Icon(icon), color: Colors.white);
}

  
    
  