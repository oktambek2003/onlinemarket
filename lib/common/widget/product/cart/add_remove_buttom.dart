

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlinemarket/common/widget/icon/circular_icon.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineShopProductQuantityWithAddRemoveButtom extends StatelessWidget {
  const onlineShopProductQuantityWithAddRemoveButtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        onlineShopCircularIcon(
          icon: Iconsax.minus,
          size: onlineShopSizes.md,
          widht: 32,
          height: 32,
          color: onlineShopFunction.isDarkMode(context)
              ? onlineShopColors.white
              : onlineShopColors.black,
          backgroundcolor:
              onlineShopFunction.isDarkMode(context)
                  ? onlineShopColors.white
                  : onlineShopColors.black,
        ),
          const SizedBox(width: onlineShopSizes.spaceBtwItem,),
    Text("2",style: Theme.of(context).textTheme.titleSmall,),
    const SizedBox(width: onlineShopSizes.spaceBtwItem,),
    const onlineShopCircularIcon(
      icon: Iconsax.add ,
      size: onlineShopSizes.md,
      widht: 32,
      height: 32,
      color: 
          onlineShopColors.white,
      backgroundcolor:
               onlineShopColors.primary,
    ),  
      ],
    );
  }
}
