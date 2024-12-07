

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlinemarket/common/widget/appbar/appbar.dart';
import 'package:onlinemarket/common/widget/custom_shapes/cured_edges/curred_edges_circular.dart';
import 'package:onlinemarket/common/widget/icon/circular_icon.dart';
import 'package:onlinemarket/common/widget/images/onlineshopRounted_images.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/images_string.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';

class onlineSopProductImageSlider extends StatelessWidget {
  const onlineSopProductImageSlider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return onlineShopCuredEdgesWidget(
      child: Container(
        color:
            dark ? onlineShopColors.darkGrey : onlineShopColors.light,
        child: Stack(
          children: [
            const SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(
                      onlineShopSizes.productImageRadius * 2),
                  child: Center(
                      child: Image(
                          image:
                              AssetImage(onlineShopImages.products4,),fit: BoxFit.cover,)),
                )),
            Positioned(
              bottom: 30,
              right: 0,
              left: onlineShopSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                    itemBuilder: (_, index) => onlineShopRoundedImages(
                          imageUrl: onlineShopImages.products17,
                          widht: 80,
                          backgroundColor: dark
                              ? onlineShopColors.dark
                              : onlineShopColors.white,
                          border: Border.all(
                            color: onlineShopColors.primary,
                          ),
                          padding: const EdgeInsets.all(onlineShopSizes.sm),
                        ),
                    separatorBuilder: (_, __) => const SizedBox(
                          width: onlineShopSizes.spaceBtwItem,
                        ),
                    itemCount: 6),
              ),
            ),
            OnlineShopAppBar(showBackArrow: true,
            actions: [
              onlineShopCircularIcon(icon: Iconsax.heart5,color: Colors.red,)
            ],)
          ],
        ),
      ),
    );
  }
}
