import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlinemarket/features/authencation/screens/password_configuration/reset_password.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/constants/text_string.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineShopForgetPassword extends StatelessWidget {
  const onlineShopForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = onlineShopFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: dark?onlineShopColors.white:onlineShopColors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            onlineShopSizes.defaultSpace,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                onlineShopText.forgetPassowrd,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: onlineShopSizes.spaceBtwSections,
              ),
              Text(
                onlineShopText.forgetPassowrdSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(
                height: onlineShopSizes.spaceBtwSections * 2,
              ),
              TextFormField(
                  decoration: const InputDecoration(
                labelText: onlineShopText.email,
                prefixIcon: Icon(Iconsax.direct_right),
              )),
              const SizedBox(
                height: onlineShopSizes.spaceBtwSections,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.offAll(const onlineShopResetPassword());
                      },
                      child: const Text(
                        onlineShopText.submit,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
