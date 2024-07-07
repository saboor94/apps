import 'package:my_apps/app/app.locator.dart';
import 'package:my_apps/servies/counterservice.dart';
import 'package:stacked/stacked.dart';

class AboutViewmodel extends BaseViewModel {
  final counterService = locator<CounterService>();
  addcarttoremove(remove) {
    counterService.deleteprodcuts(remove);
    rebuildUi();
  }
}
