// import 'package:api/app/app.router.dart';
// import 'package:api/screens/home/homescreen.dart';
// import 'package:api/screens/home/homescreen.dart';
// import 'package:api/screens/home/homescreen.dart';
import 'package:api/app/app.locator.dart';
import 'package:api/app/app.router.dart';

import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
// import 'package:stacked_services/stacked_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         initialRoute: Routes.homeScreen,
        onGenerateRoute: StackedRouter().onGenerateRoute,
        navigatorKey: StackedService.navigatorKey,
        );
  }
}
