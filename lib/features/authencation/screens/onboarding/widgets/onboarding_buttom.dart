import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/device/device_utils.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

import '../../../controller/controller_on_boarding/onborading_controller.dart';

class OnboardingButtom extends StatelessWidget {
  const OnboardingButtom({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboradingController());
    final dark = onlineShopFunction.isDarkMode(context);
    return Positioned(
        right: onlineShopSizes.defaultSpace,
        bottom: onlineShopUtils.getButtomNavigationBarHeight(),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor:
                    dark ? onlineShopColors.primary : Colors.black),
            onPressed: () {
              controller.nextPage();
            },
            child: const Icon(
              Iconsax.arrow_right_3,
            )));
  }
}
