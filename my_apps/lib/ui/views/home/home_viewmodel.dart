import 'package:my_apps/app/app.locator.dart';
import 'package:my_apps/app/app.router.dart';
import 'package:my_apps/servies/counterservice.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final navigatoService = locator<NavigationService>();
  final counterservice = locator<CounterService>();

  addprodcut(toadd) {
    counterservice.addproductstoCarts(toadd);
  }

  updatecounterValue() {
    counterservice.updateconter();
    rebuildUi();
  }

  updatecounterValuesub() {
    counterservice.subconter();
    rebuildUi();
  }

  navigateAbout() {
    navigatoService.navigateToAboutview();
  }
}
