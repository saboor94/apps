import 'package:flutter/material.dart';

class Listveiw1 extends StatefulWidget {
  const Listveiw1({super.key});

  @override
  State<Listveiw1> createState() => _Listveiw1State();
}

class _Listveiw1State extends State<Listveiw1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(tileColor: Colors.amberAccent,);
        },
        itemCount: 4,
      ),
    );
  }
}
