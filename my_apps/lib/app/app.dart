import 'package:my_apps/servies/counterservice.dart';
import 'package:my_apps/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:my_apps/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:my_apps/ui/views/about/aboout_view.dart';
import 'package:my_apps/ui/views/home/home_view.dart';

import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeVeiw, initial: true),
MaterialRoute(page: Aboutview)
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    Singleton(classType: CounterService)
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
