import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppBarController extends GetxController {
  var scrollController = ScrollController().obs;
  var offset = 0.0.obs;

  @override
  void onInit() {
    scrollController.value.addListener(() {
      setOffset(scrollController.value.offset);
    });
    super.onInit();
  }

  @override
  void onClose() {
    scrollController.value.dispose();
    super.onClose();
  }

  void setOffset(double value) {
    offset.value = value;
  }
}
