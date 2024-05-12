import 'dart:async';
import 'package:flutter/material.dart';
import 'package:newproject/gridview.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key:key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const gridview()),
      ),
    );
  }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Splash Screeen"),
        ),
      ),
    );
  }
}
