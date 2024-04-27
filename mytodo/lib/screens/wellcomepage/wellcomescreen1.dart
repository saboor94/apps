import 'package:flutter/material.dart';
import 'package:mytodo/screens/LoginAndREG/login.dart';
import 'package:mytodo/screens/wellcomepage/wellcome2.dart';

class Wellcome1 extends StatelessWidget {
  const Wellcome1({super.key});

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
              height: 100,
            ),
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.squarespace-cdn.com/content/v1/608c1b27fab62805f5b399fa/1619907646424-2ZZQQOGSX5GYGKNDSE74/img-time_and_attendance.png'),
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.high)),
              height: 330,
              width: 290,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Mange your tasks',
              style: TextStyle(fontSize: 40),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'You can easily mange all of your daily',
              style: TextStyle(fontSize: 15),
            ),
            const Text('task in DomMe for free',
                style: TextStyle(fontSize: 15)),
            const SizedBox(
              height: 100,
            ),
            Container(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(218, 145, 83, 199)),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Wellcome2()),
                    );
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(color: Colors.white),
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
