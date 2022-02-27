import 'package:garuda_ott/controllers/controllers.dart';
import 'package:get/get.dart';

class NavigationBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<NavigationController>(NavigationController());
  }
}
