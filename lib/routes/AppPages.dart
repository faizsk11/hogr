import 'package:get/get.dart';
import 'package:hogr/main.dart';
import 'package:hogr/routes/AppRoutes.dart';
import 'package:hogr/Bindings/AppBinding.dart';
import 'package:hogr/views/tab1.dart';
import 'package:hogr/views/tab2.dart';
import 'package:hogr/views/tab3.dart';
import 'package:hogr/views/tab3List.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomeScreen(),
      binding: AppBinding(),
      preventDuplicates: true,
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppRoutes.TAB1,
      page: () => Tab1View(),
      preventDuplicates: false,
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppRoutes.TAB2,
      page: () => Tab2View(),
      preventDuplicates: false,
      transition: Transition.noTransition,
    ),
    GetPage(
        name: AppRoutes.TAB3,
        page: () => Tab3View(),
        preventDuplicates: false,
        transition: Transition.noTransition,
        ),
    GetPage(
        name: AppRoutes.TAB3LIST,
        page: () => Tab3ListView(),
        preventDuplicates: false,
        transition: Transition.noTransition,
        fullscreenDialog: true),
  ];
}
