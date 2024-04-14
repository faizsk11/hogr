import 'package:get/instance_manager.dart';
import 'package:hogr/controller/Appcontroller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppController>(() => AppController());
  }
}

