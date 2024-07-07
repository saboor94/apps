import 'package:flutter/material.dart';
import 'package:google_implementation/fingerprint/fingerprint_services.dart';

class FingerPrint extends StatefulWidget {
  const FingerPrint({super.key});

  @override
  State<FingerPrint> createState() => _FingerPrintState();
}

class _FingerPrintState extends State<FingerPrint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text('scan Fingerprint'),
            const SizedBox(height: 20,),
            ElevatedButton.icon(
                onPressed: () async {
                  bool auth = await Authentication.authentication();
                 
                    debugPrint('can $auth');
                  
                },
                icon: const Icon(Icons.fingerprint),
                label:const Text('Scan Finger Print'))
          ],
        ),
      ),
    );
  }
}
