import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

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
      // Get.to();
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
          print(currentPageIndex.value);

    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);

  }
}
