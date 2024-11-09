import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';

class OnlineShopFrom extends StatelessWidget {
  const OnlineShopFrom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(
          vertical: onlineShopSizes.spaceBtwSections),
      child: Column(
        children: [
          TextFormField(
              decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: onlineShopText.email,
          )),
          const SizedBox(
            height: onlineShopSizes.spaceBTinputFields,
          ),
          TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: onlineShopText.password,
                  suffixIcon: Icon(Iconsax.eye_slash))),
          const SizedBox(
            height: onlineShopSizes.spaceBTinputFields / 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(onlineShopText.rememberMe)
                ],
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(onlineShopText.forgetPassowrd))
            ],
          ),
          const SizedBox(
            height: onlineShopSizes.spaceBtwSections,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(onlineShopText.signIn))),
          const SizedBox(
            height: onlineShopSizes.spaceBtwItem,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(onlineShopText.createAccaunt))),
          const SizedBox(
            height: onlineShopSizes.spaceBtwSections,
          ),
        ],
      ),
    ));
  }
}
