import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinemarket/features/authencation/controller_on_boarding/onborading_controller.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/device/device_utils.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardingNavigatorPage extends StatelessWidget {
  const OnboardingNavigatorPage ({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=onlineShopFunction.isDarkMode(context);
    final controller = Get.put(OnboradingController());
    return Positioned(
        bottom: onlineShopUtils.getButtomNavigationBarHeight()+25,
        left: onlineShopSizes.defaultSpace,

        child: SmoothPageIndicator(
controller: controller.pageController,
      onDotClicked: controller.dontNavigatorclick,
      effect: ExpandingDotsEffect(activeDotColor:dark?onlineShopColors.light:onlineShopColors.dark   ,dotHeight: 6),
      count: 3,
    ));
  }
}
