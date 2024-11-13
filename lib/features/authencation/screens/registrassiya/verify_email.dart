import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlinemarket/common/sucses/succes_email/succes_email.dart';
import 'package:onlinemarket/features/authencation/screens/login/login.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/images_string.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/constants/text_string.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineShopVerifyEmail extends StatelessWidget {
  const onlineShopVerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = onlineShopFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        iconTheme: IconThemeData(
            color: dark ? onlineShopColors.white : onlineShopColors.black),
        actions: [
          IconButton(
              onPressed: () {
                Get.offAll(() => const LoginScreen());
              },
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            onlineShopSizes.defaultSpace,
          ),
          child: Column(
            children: [
              Image(
                image: const AssetImage(
                    onlineShopImages.deliveredEmailIllustration),
                width: onlineShopFunction.screenHeight() * 0.6,
              ),
              const SizedBox(
                height: onlineShopSizes.spaceBtwSections,
              ),
              Text(
                onlineShopText.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: onlineShopSizes.spaceBtwItem,
              ),
              Text(
                "anvaralimnazarov84@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: onlineShopSizes.spaceBtwSections,
              ),
              const SizedBox(
                height: onlineShopSizes.spaceBtwItem,
              ),
              Text(
                onlineShopText.confirmEmailSubTitle,
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
                      Get.to(onlineShopSuccesEmail());
                    },
                    child: const Text(onlineShopText.continueEmail)),
              ),
              const SizedBox(
                height: onlineShopSizes.spaceBtwItem,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(onlineShopText.resendEmail)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
