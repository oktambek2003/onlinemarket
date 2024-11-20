

import 'package:flutter/material.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineShopVerticalImages extends StatelessWidget {
  const onlineShopVerticalImages({
    super.key,
    required this.image,
    required this.title,
    this.textColor = onlineShopColors.white,
    this.backgroundColor = onlineShopColors.white,
    this.onTap,
  });
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
      final dark = onlineShopFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: onlineShopSizes.spaceBtwItem),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(onlineShopSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (dark
                        ? onlineShopColors.black
                        : onlineShopColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                color:  dark?onlineShopColors.light:onlineShopColors.dark,
              ),
            ),
            const SizedBox(
              height: onlineShopSizes.spaceBtwItem / 2,
            ),
            SizedBox(
                width: 55,
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ))
          ],
        ),
      ),
    );
  }
}
