import 'package:flutter/material.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/device/device_utils.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineshopHomeSearch extends StatelessWidget {
  const onlineshopHomeSearch(
      {super.key,
      required this.text,
      this.icon,
      this.showBackground = true,
      this.showBorder = true,
      this.padding= const EdgeInsets.symmetric(
            horizontal: onlineShopSizes.defaultSpace),
      this.onTap});
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    final dark = onlineShopFunction.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding:padding,
        child: Container(
          width: onlineShopUtils.getScreenWidht(),
          padding: const EdgeInsets.all(onlineShopSizes.md),
          decoration: BoxDecoration(
              color: showBackground
                  ? dark
                      ? onlineShopColors.dark
                      : onlineShopColors.light
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(onlineShopSizes.cardRadiusLg),
              border:
                  showBorder ? Border.all(color: onlineShopColors.grey) : null),
          child: Row(
            children: [
              Icon(
                icon,
                color: dark ? onlineShopColors.darkGrey : onlineShopColors.grey,
              ),
              SizedBox(
                width: onlineShopSizes.spaceBtwItem,
              ),
              Text(text, style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}
