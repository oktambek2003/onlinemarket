

import 'package:flutter/material.dart';
import 'package:onlinemarket/common/widget/images/onlineshopRounted_images.dart';
import 'package:onlinemarket/common/widget/texts/brand_title_text_vefield_icon.dart';
import 'package:onlinemarket/common/widget/texts/product_title.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/images_string.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineShopCartItem extends StatelessWidget {
  const onlineShopCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        onlineShopRoundedImages(
          imageUrl: onlineShopImages.products16,
          widht: 60,
          height: 60,
          padding:const EdgeInsets.all(onlineShopSizes.sm),
          backgroundColor:
              onlineShopFunction.isDarkMode(context)
                  ? onlineShopColors.darkerGrey
                  : onlineShopColors.light,
        ),
        const SizedBox(width: onlineShopSizes.spaceBtwItem,),
         Expanded(
           child: Column(
            mainAxisSize: MainAxisSize.min,
                                     crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           const  onlineShopBrandtitleWithVerifieldIcon(title: "Nike"),
        const   Flexible(child:    onlineShopProductTitle(title: "Black Sports Shoes ",maxLine: 1,)),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Color ',style:Theme.of(context).textTheme.bodySmall),
                     TextSpan(text: 'Green ',style:Theme.of(context).textTheme.bodyLarge),
                     TextSpan(text: 'Size ',style:Theme.of(context).textTheme.bodySmall),
                     TextSpan(text: 'UK 08 ',style:Theme.of(context).textTheme.bodyLarge),
           
                  ]
                )
              )
            ],
                                     ),
         )
      ],
    );
  }
}
