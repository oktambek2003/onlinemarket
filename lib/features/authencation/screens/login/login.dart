import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinemarket/common/style/spasing_style.dart';
import 'package:onlinemarket/common/widget_login_signup/from_divider.dart';
import 'package:onlinemarket/common/widget_login_signup/from_iconButtom.dart';
import 'package:onlinemarket/features/authencation/screens/login/widgets/login_from.dart';
import 'package:onlinemarket/features/authencation/screens/login/widgets/login_header.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/constants/text_string.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = onlineShopFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: onlineShopSpacingStyle.paddingWightAppbarHeight,
            child: Column(
              children: [
                onlineShopHeader(dark: dark),
                const OnlineShopFrom(),
                onlineShopFlexsible(dark: dark,deviderText: onlineShopText.orSigninWith.capitalize!,),
                const SizedBox(height: onlineShopSizes.spaceBtwSections,),
                const onlineShopSocialButtom()
              ],
            )),
      ),
    );
  }
}
