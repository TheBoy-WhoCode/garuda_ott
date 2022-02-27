import 'package:garuda_ott/controllers/controllers.dart';
import 'package:get/get.dart';

class HomeBindigs implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeAppBarController>(HomeAppBarController());
  }
}
