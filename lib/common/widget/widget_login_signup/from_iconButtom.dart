import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/images_string.dart';
import '../../../utils/constants/sizes.dart';

class onlineShopSocialButtom extends StatelessWidget {
  const onlineShopSocialButtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: onlineShopColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: onlineShopSizes.iconMd,
                  height: onlineShopSizes.iconMd,
                  image: AssetImage(onlineShopImages.google))),
        ),
      const  SizedBox(
          width: onlineShopSizes.spaceBtwItem,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: onlineShopColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: onlineShopSizes.iconMd,
                  height: onlineShopSizes.iconMd,
                  image: AssetImage(onlineShopImages.facebook))),
        )
      ],
    );
  }
}
