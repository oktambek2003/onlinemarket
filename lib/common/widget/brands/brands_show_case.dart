

import 'package:flutter/material.dart';
import 'package:onlinemarket/common/widget/brands/brand_card.dart';
import 'package:onlinemarket/common/widget/container_routed/rouded_container.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/images_string.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineshopBrandShowCase extends StatelessWidget {
  const onlineshopBrandShowCase({
    super.key,
    required this.dark, required this.images,
  });

  final bool dark;
  final List<String> images;
  @override
  Widget build(BuildContext context) {
    return onlineShopRoudedContainer(
      showBorder: true,
      padding: EdgeInsets.all(onlineShopSizes.md),
      borderColor: onlineShopColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: onlineShopSizes.spaceBtwItem),
      child: Column(
        children: [
          onlineShopBrandCard(
            dark: dark,
            showBorder: false,
          ),
          Row(
            children: images.map((image)=>brandTopProductImageWidget(image, context)).toList()
          )
        ],
      ),
    );
  }
}
Widget brandTopProductImageWidget(String image,context){
  return  Expanded(
                child: onlineShopRoudedContainer(
                  height: 100,
                  backgroundColor: onlineShopFunction.isDarkMode(context)?onlineShopColors.darkerGrey:onlineShopColors.light,
                  margin: const EdgeInsets.only(
                    right: onlineShopSizes.sm,
                  ),
                  padding: const EdgeInsets.all(onlineShopSizes.md),
                  child:  Image(
                    image: AssetImage(
                      image
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              );
}