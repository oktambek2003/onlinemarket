import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlinemarket/common/widget/texts/brand_title_text.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/enums.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';

class onlineShopBrandtitleWithVerifieldIcon extends StatelessWidget {
  const onlineShopBrandtitleWithVerifieldIcon({
    super.key,
    required this.title,
     this.maxLines=1,
    this.textColor,
    this.IconColor=onlineShopColors.primary,
     this.textAlign=TextAlign.center,
     this.brandtextSizes=TextSizes.small,
  });
  final String title;
  final int maxLines;
  final Color? textColor, IconColor;
  final TextAlign textAlign;
  final TextSizes brandtextSizes;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        onlineShopBrandTitleText(
          title: title,
          color: textColor,
          maxLine: maxLines,
          textAlign: textAlign,
          brandtextSizes: brandtextSizes,
        ),
        const SizedBox(
          width: onlineShopSizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          color: IconColor,
          size: onlineShopSizes.iconXs,
        )
      ],
    );
  }
}
