import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:onlinemarket/features/authencation/screens/login/login.dart';

class OnboradingController extends GetxController {
  static OnboradingController get instance => Get.find();
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;
  void updatePageIndicator(index) => currentPageIndex.value = index;
  void dontNavigatorclick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);

    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);

  }
}
