import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mytodo/screens/wellcomepage/wellcomescreen1.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Wellcome1()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Column(
        children: [
          SizedBox(
            height: 270,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.transparent,
            child: Image.network(
                'https://static.vecteezy.com/system/resources/previews/010/144/877/original/check-mark-icon-sign-design-free-png.png'),
          ),
          SizedBox(height: 30,),Text('UpTodo',style: TextStyle(fontSize: 50),)
        ],
      ))),
    );
  }
}
