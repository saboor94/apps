import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hackathon/screens/homepage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Homepage())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      SizedBox(
        height: 20,
      ),
      Container(
        height: 500,
        width: 500,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage('image/Rectangle 118.png'))),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Center(child: Image(image: AssetImage('image/Logo.png'))),
            SizedBox(
              height: 70,
            ),
            Center(child: Image(image: AssetImage('image/Plantify.png'))),
          ],
        ),
      ),
    ]));
  }
}
