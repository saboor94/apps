import 'package:flutter/material.dart';
import 'package:newproject/screens/about/about.dart';
import 'package:newproject/screens/contact/contact.dart';
import 'package:newproject/screens/dashboad/page1.dart';


class HomeVeiws extends StatefulWidget {
  const HomeVeiws({super.key});

  @override
  State<HomeVeiws> createState() => _HomeVeiwsState();
}

class _HomeVeiwsState extends State<HomeVeiws> {
  int activetab = 0;
  Widget currentscreen = Dashboard();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentscreen,
      bottomNavigationBar: BottomAppBar(
        height: 60,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    activetab = 0;
                    currentscreen = const Dashboard();
                  });
                },
                child: Icon(Icons.home,
                    color: activetab == 0 ? Colors.red : Colors.black),
              ),
              MaterialButton(
                  minWidth: 60,
                  onPressed: () {
                    setState(() {
                      activetab = 1;
                      currentscreen = const Contact();
                    });
                  },
                  child: Icon(Icons.contacts,
                      color: activetab == 1 ? Colors.red : Colors.black)),
              MaterialButton(
                  minWidth: 60,
                  onPressed: () {
                    setState(() {
                      activetab = 2;
                      currentscreen = const About();
                    });
                  },
                  child: Icon(Icons.account_box_outlined,
                      color: activetab == 2 ? Colors.red : Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
