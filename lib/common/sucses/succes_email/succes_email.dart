import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinemarket/common/style/spasing_style.dart';
import 'package:onlinemarket/features/authencation/screens/login/login.dart';
import 'package:onlinemarket/utils/constants/images_string.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/constants/text_string.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineShopSuccesEmail extends StatelessWidget {
  const onlineShopSuccesEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: onlineShopSpacingStyle.paddingWightAppbarHeight * 2,
        child: Column(
          children: [
            Image(
              image:
                  const AssetImage(onlineShopImages.staticSucsessIllusration),
              width: onlineShopFunction.screenHeight() * 0.6,
            ),
            const SizedBox(
              height: onlineShopSizes.spaceBtwSections,
            ),
            Text(
              onlineShopText.userAccuntTitleCreated,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: onlineShopSizes.spaceBtwItem,
            ),
            Text(
              onlineShopText.userAccauntSubtitleCreated,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: onlineShopSizes.spaceBtwSections,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(LoginScreen());
                  },
                  child: const Text(onlineShopText.continueEmail)),
            ),
          ],
        ),
      )),
    );
  }
}
