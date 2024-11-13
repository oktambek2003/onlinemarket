import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinemarket/common/style/spasing_style.dart';
import 'package:onlinemarket/features/authencation/screens/login/login.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/images_string.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/constants/text_string.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineShopResetPassword extends StatelessWidget {
  const onlineShopResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = onlineShopFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: dark ? onlineShopColors.white : onlineShopColors.black),
        actions: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(onlineShopSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(
                  onlineShopImages.ProductSaleIllustration,
                ),
                width: onlineShopFunction.screenWidht() * 0.6,
              ),
              const SizedBox(
                height: onlineShopSizes.spaceBtwSections,
              ),
              Text(
                onlineShopText.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: onlineShopSizes.spaceBtwSections,
              ),
              Text(
                onlineShopText.changeYoourPassowdSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(height: onlineShopSizes.spaceBtwSections,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.offAll(LoginScreen());
                    },
                    child: Text(onlineShopText.done)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
