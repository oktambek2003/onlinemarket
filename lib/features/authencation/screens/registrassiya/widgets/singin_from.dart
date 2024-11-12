
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';

class SignInFrom extends StatelessWidget {
  const SignInFrom({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: onlineShopText.firsName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(
              width: onlineShopSizes.spaceBTinputFields,
            ),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: onlineShopText.Lastname,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            )
          ],
        ),
        const SizedBox(
          height: onlineShopSizes.spaceBTinputFields,
        ),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: onlineShopText.uername,
              prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(
          height: onlineShopSizes.spaceBTinputFields,
        ),
        TextFormField(
          decoration: const InputDecoration(
              labelText: onlineShopText.email,
              prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(
          height: onlineShopSizes.spaceBTinputFields,
        ),
        TextFormField(
          decoration: const InputDecoration(
              labelText: onlineShopText.phoneNumber,
              prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(
          height: onlineShopSizes.spaceBTinputFields,
        ),
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
              labelText: onlineShopText.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
      
       
      
      
      ],
    ));
  }
}
