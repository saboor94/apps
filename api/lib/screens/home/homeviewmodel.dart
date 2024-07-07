import 'package:api/app/app.locator.dart';
import 'package:api/screens/services/api_services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class Homeviewmodel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final apiServices = locator<ApiServices>();

  List users = [];
  getUsers() async {
    users = await apiServices.getusersData();
    print(users);
    rebuildUi();
  }

  getuserbyid(id) async {
    users = await apiServices.getuserdatabyId(id);
    print(users);
    rebuildUi();
  }

  getbypost(data) async{
    users = await apiServices.postUserData(data);
    print(users);
    rebuildUi();
  }
}
