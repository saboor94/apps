import 'package:flutter/material.dart';
import 'package:google_implementation/home/homepage.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
  
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     theme: ThemeData.dark(),
      home: const Homepage(),
    );
  }
}
