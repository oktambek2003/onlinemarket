import 'package:flutter/material.dart';
import 'package:onlinemarket/common/widget/container_routed/rouded_container.dart';
import 'package:onlinemarket/common/widget/images/circular_image.dart';
import 'package:onlinemarket/common/widget/texts/brand_title_text_vefield_icon.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/enums.dart';
import 'package:onlinemarket/utils/constants/images_string.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';

class onlineShopBrandCard extends StatelessWidget {
  const onlineShopBrandCard({
    super.key,
    required this.dark, this.onTap, required this.showBorder,
  });

  final bool dark;
  final void Function()? onTap;
  final bool showBorder;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: onlineShopRoudedContainer(
        padding: const EdgeInsets.all(onlineShopSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: onlineShopCircularImage(
                dark: dark,
                image: onlineShopImages.colthIcon,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor:
                    dark ? onlineShopColors.white : onlineShopColors.black,
              ),
            ),
            const SizedBox(
              height: onlineShopSizes.spaceBtwItem / 2,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const onlineShopBrandtitleWithVerifieldIcon(
                    title: "Nike",
                    brandtextSizes: TextSizes.large,
                  ),
                  Text(
                    '256 products ',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
