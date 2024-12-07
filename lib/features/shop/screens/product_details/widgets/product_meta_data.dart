import 'package:flutter/material.dart';
import 'package:onlinemarket/common/widget/container_routed/rouded_container.dart';
import 'package:onlinemarket/common/widget/images/circular_image.dart';
import 'package:onlinemarket/common/widget/product/priceText/price_text.dart';
import 'package:onlinemarket/common/widget/texts/brand_title_text_vefield_icon.dart';
import 'package:onlinemarket/common/widget/texts/product_title.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/enums.dart';
import 'package:onlinemarket/utils/constants/images_string.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineshopProductMetaData extends StatelessWidget {
  const onlineshopProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = onlineShopFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            onlineShopRoudedContainer(
              radius: onlineShopSizes.sm,
              backgroundColor: onlineShopColors.secondColor.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: onlineShopSizes.sm, vertical: onlineShopSizes.xs),
              child: Positioned(
                  top: 12,
                  child: Text(
                    "25%",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .apply(color: onlineShopColors.black),
                  )),
            ),
            const SizedBox(
              width: onlineShopSizes.spaceBtwItem,
            ),
            Text(
              "\$250",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: onlineShopSizes.spaceBtwItem,
            ),
            const onlineShopProducrPriceText(
              price: "175",
              isLarge: true,
            )
          ],
        ),
        const SizedBox(
          height: onlineShopSizes.spaceBtwItem / 1.5,
        ),
        const onlineShopProductTitle(title: "Green nike sporting Shirt"),
        const SizedBox(
          height: onlineShopSizes.spaceBtwItem / 1.5,
        ),
        Row(
          children: [
            const onlineShopProductTitle(title: "Status"),
            const SizedBox(
              width: onlineShopSizes.spaceBtwItem,
            ),
            Text(
              "In Stack",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(
          height: onlineShopSizes.spaceBtwItem / 1.5,
        ),
        Row(
          children: [
            onlineShopCircularImage(
              dark: dark,
              image: onlineShopImages.colthIcon,
              widht: 32,
              height: 32,
              overlayColor:
                  dark ? onlineShopColors.white : onlineShopColors.black,
            ),
           const onlineShopBrandtitleWithVerifieldIcon(
              title: "Nike",
              brandtextSizes: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
