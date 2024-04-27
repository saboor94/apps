import 'package:flutter/material.dart';
import 'package:mytodo/screens/LoginAndREG/login.dart';
import 'package:mytodo/screens/wellcomepage/wellcome2.dart';
import 'package:mytodo/screens/wellcomepage/wellcome4.dart';

class Wellcome3 extends StatelessWidget {
  const Wellcome3({super.key});

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
                          builder: (context) =>const Login()),
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
                          'https://images.squarespace-cdn.com/content/v1/608c1b27fab62805f5b399fa/1619907556572-F97L1OB4B2BPI8BCWE1D/img-human_capital_management.png'),
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.high)),
              height: 330,
              width: 290,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'organize your tasks',
              style: TextStyle(fontSize: 40),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'you can organize your daily tasks by',
              style: TextStyle(fontSize: 15),
            ),
            const Text('adding your tasks into separate categories',
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
                            builder: (context) => const Wellcome2()),
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
                              builder: (context) => const Wellcom4()),
                        );
                      },
                      child: const Text(
                        'GET STARTED',
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
