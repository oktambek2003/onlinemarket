
import 'package:flutter/material.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/device/device_utils.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineshopHomeSearch extends StatelessWidget {
  const onlineshopHomeSearch({
    super.key,
    required this.text,
    this.icon,
     this.showBackground=true,
     this.showBorder=true,
  });
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  @override
  Widget build(BuildContext context) {
    final dark =onlineShopFunction.isDarkMode(context);

    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: onlineShopSizes.defaultSpace),
      child: Container(
        width: onlineShopUtils.getScreenWidht(),
        padding: const EdgeInsets.all(onlineShopSizes.md),
        decoration: BoxDecoration(
            color:showBackground? dark?onlineShopColors.white:onlineShopColors.grey:Colors.transparent,
            borderRadius: BorderRadius.circular(onlineShopSizes.cardRadiusLg),
            border:showBorder? Border.all(color: onlineShopColors.grey):null),
        child: Row(
          children: [
            Icon(
              icon,
              color: onlineShopColors.darkGrey,
            ),
            SizedBox(
              width: onlineShopSizes.spaceBtwItem,
            ),
            Text(text, style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
