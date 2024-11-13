
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinemarket/features/authencation/screens/registrassiya/verify_email.dart';
import 'package:onlinemarket/utils/constants/text_string.dart';
class LoginCreateAccuntButtim extends StatelessWidget {
  const LoginCreateAccuntButtim({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
          onPressed: () {
            Get.to(onlineShopVerifyEmail());
          },
          child: Text(onlineShopText.createAccaunt)),
    );
  }
}
