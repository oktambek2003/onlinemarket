import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlinemarket/common/widget/icon/circular_icon.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineShopBottomAddToCardWidget extends StatelessWidget {
  const onlineShopBottomAddToCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = onlineShopFunction.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: onlineShopSizes.defaultSpace,
          vertical: onlineShopSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? onlineShopColors.darkerGrey : onlineShopColors.light,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(onlineShopSizes.cardRadiusLg),
              topRight: Radius.circular(onlineShopSizes.cardRadiusLg))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
             const onlineShopCircularIcon(
                icon: Iconsax.minus,
                widht: 40,
                height: 40,
                backgroundcolor: onlineShopColors.darkGrey,
                color: Colors.white,
              ),
              const SizedBox(
                width: onlineShopSizes.spaceBtwItem,
              ),
              Text(
                "2",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                width: onlineShopSizes.spaceBtwItem,
              ),
                 const onlineShopCircularIcon(
                icon: Iconsax.add,
                widht: 40,
                height: 40,
                backgroundcolor: onlineShopColors.black,
                color: Colors.white,
              ),
            ],
          ),
          ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(onlineShopSizes.md),
            backgroundColor: onlineShopColors.black,
            side: const BorderSide(color: onlineShopColors.black)
          ),
           child: const Text("Add to Cart"))
        ],
        
      ),
    );
  }
}
