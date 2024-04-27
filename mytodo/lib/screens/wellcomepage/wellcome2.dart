import 'package:flutter/material.dart';
import 'package:mytodo/screens/LoginAndREG/login.dart';
import 'package:mytodo/screens/wellcomepage/wellcome3.dart';
import 'package:mytodo/screens/wellcomepage/wellcomescreen1.dart';

class Wellcome2 extends StatelessWidget {
  const Wellcome2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            Container(
                alignment: Alignment.topLeft,
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Login()),
                    );
                  },
                  child: const Text(
                    'SKIP',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            const SizedBox(
              height: 90,
            ),
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.squarespace-cdn.com/content/v1/608c1b27fab62805f5b399fa/1619907663621-N3C5ERW3ZYGLZ8JZ66YY/img-scheduling.png'),
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.high)),
              height: 330,
              width: 290,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Create daily routine',
              style: TextStyle(fontSize: 40),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'In Uptodo you can create your',
              style: TextStyle(fontSize: 15),
            ),
            const Text('Personalized routine to stay productive',
                style: TextStyle(fontSize: 15)),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Wellcome1()),
                      );
                    },
                    child: const Text(
                      'Back',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(218, 145, 83, 199)),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Wellcome3()),
                        );
                      },
                      child: const Text(
                        'Next',
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
