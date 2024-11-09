import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinemarket/features/authencation/controller_on_boarding/onborading_controller.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/device/device_utils.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboradingController());
    return Positioned(
        top: onlineShopUtils.getAppbarHeight(),
        right: onlineShopSizes.defaultSpace,
        child: TextButton(
            onPressed: () {
              controller.skipPage();
            },
            child: Text("Skip")));
  }
}