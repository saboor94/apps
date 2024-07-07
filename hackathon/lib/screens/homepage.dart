import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hackathon/screens/login.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
          Container(
            padding: EdgeInsets.only(left: 22),
            alignment: Alignment.topLeft,
            child: Image(image: AssetImage('image/GET READY BE HIGYENIC.png')),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: 22),
            alignment: Alignment.topLeft,
            child: Image(
                image: AssetImage(
                    'image/Jelajahi AiLearn untuk menambah kemampuanmu dalam mengoperasikan Adobe Illustrator.png')),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, elevation: 0),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) =>LoginPage()));
              },
              child: Image(
                image: AssetImage('image/Botton.png'),
              )),
        ],
      ),
    );
  }
}
