import 'package:flutter/material.dart';
import 'package:google_implementation/QRscanner/qr_scanner.dart';
import 'package:google_implementation/audiorecord/audiorecod.dart';
import 'package:google_implementation/fingerprint/finger_print.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
   @override
    void initState() {
      super.initState();
      initerstitialAd();
    }
 

    late InterstitialAd interstitialAd;
    bool isAdLoad = false;

    initerstitialAd() {
      InterstitialAd.load(
          adUnitId: "ca-app-pub-3940256099942544/1033173712",
          request: const AdRequest(),
          adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
            interstitialAd = ad;
            setState(() {
              isAdLoad = true;
              interstitialAd.show();
            });
          }, onAdFailedToLoad: ((error) {
            interstitialAd.dispose();
          })));
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>const FingerPrint()));
                },
                icon: const Icon(Icons.fingerprint),
                label: const Text('Finger print')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>const QrScanner()));
                },
                icon: const Icon(Icons.qr_code),
                label: const Text('QRcode scanner')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>const Audiorecod()));
                },
                icon: const Icon(Icons.mic),
                label: const Text('Audio Recorder'))
          ],
        ),
      ),
    );
  }
}
