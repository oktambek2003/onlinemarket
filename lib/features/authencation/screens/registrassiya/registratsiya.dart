import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinemarket/common/widget_login_signup/from_divider.dart';
import 'package:onlinemarket/common/widget_login_signup/from_iconButtom.dart';
import 'package:onlinemarket/features/authencation/screens/registrassiya/widgets/SignIn_header.dart';
import 'package:onlinemarket/features/authencation/screens/registrassiya/widgets/SingIn_checbox.dart';
import 'package:onlinemarket/features/authencation/screens/registrassiya/widgets/sign_in_create_buttom.dart';
import 'package:onlinemarket/features/authencation/screens/registrassiya/widgets/singin_from.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/constants/text_string.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineShopSingUp extends StatelessWidget {
  const onlineShopSingUp({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = onlineShopFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: dark ? onlineShopColors.white : onlineShopColors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(onlineShopSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const  SingInHeader(),
              const SizedBox(height: onlineShopSizes.spaceBtwSections),
              SignInFrom(dark: dark),
              const SizedBox(
                height: onlineShopSizes.spaceBtwSections,
              ),
          const    SinginChecbox(),
             const SizedBox(
                height: onlineShopSizes.spaceBtwSections,
              ),
             const LoginCreateAccuntButtim(),
            const  SizedBox(
                height: onlineShopSizes.spaceBtwSections,
              ),
              onlineShopFlexsible(
                  dark: dark,
                  deviderText: onlineShopText.orSightUpWith.capitalize!),
              const SizedBox(
                height: onlineShopSizes.spaceBtwSections,
              ),
           const   onlineShopSocialButtom(),
            ],
          ),
        ),
      ),
    );
  }
}

