
import 'package:api/screens/home/homescreen.dart';
import 'package:api/screens/services/api_services.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [MaterialRoute(page: HomeScreen),
],
dependencies: [Singleton(classType: NavigationService),
LazySingleton(classType: ApiServices)])
class App {}
