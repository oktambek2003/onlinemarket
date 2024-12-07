import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlinemarket/common/style/shadow_style.dart';
import 'package:onlinemarket/common/widget/container_routed/rouded_container.dart';
import 'package:onlinemarket/common/widget/icon/circular_icon.dart';
import 'package:onlinemarket/common/widget/images/onlineshopRounted_images.dart';
import 'package:onlinemarket/common/widget/product/priceText/price_text.dart';
import 'package:onlinemarket/common/widget/texts/brand_title_text_vefield_icon.dart';
import 'package:onlinemarket/common/widget/texts/product_title.dart';
import 'package:onlinemarket/features/shop/screens/product_details/product_details.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/images_string.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineShopProductCardVertical extends StatelessWidget {
  const onlineShopProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = onlineShopFunction.isDarkMode(context);
    return GestureDetector(
      onTap: ()=> Get.to( onlineshopProductDetails(  )),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            color: dark ? onlineShopColors.darkerGrey : onlineShopColors.white,
            boxShadow: [onlineShopShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(
              onlineShopSizes.productImageRadius,
            )),
        child: Column(
          children: [
            onlineShopRoudedContainer(
              height: 180,
              padding:const EdgeInsets.all(onlineShopSizes.sm),
              backgroundColor:
                  dark ? onlineShopColors.dark : onlineShopColors.light,
              child: Stack(
                children: [
               const   onlineShopRoundedImages(
                    imageUrl: onlineShopImages.products10,
                    applyImagesRadius: true,
                  ),
                  onlineShopRoudedContainer(
                    radius: onlineShopSizes.sm,
                    backgroundColor:
                        onlineShopColors.secondColor.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: onlineShopSizes.sm,
                        vertical: onlineShopSizes.xs),
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
                const  Positioned
                  (
                    top: 0,
                    right: 0,
                    child: onlineShopCircularIcon(icon: Iconsax.heart5,     color: Colors.red,)),
                   
                ],
              ),
            ),
          const  SizedBox(height: onlineShopSizes.spaceBtwItem/2,),

          const   Padding(padding: EdgeInsets.only(left: onlineShopSizes.sm),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       onlineShopProductTitle(title: "Green Nike Air Shoes",smallSize: true,),
                       SizedBox(height: onlineShopSizes.spaceBtwItem/2,),
                       onlineShopBrandtitleWithVerifieldIcon(title: "Nike",),
                    
                      ],
                    ) ,
                    ),
                    const   Spacer(),


                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      const  Padding(
                          padding:  EdgeInsets.only(left: onlineShopSizes.sm),
                          child:   onlineShopProducrPriceText(price:"35.0",isLarge: true, ),
                        ),
                          Container(decoration:const BoxDecoration(color: onlineShopColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(onlineShopSizes.cardRadiusMd),
                            bottomRight: Radius.circular(onlineShopSizes.productImageRadius))
                          ),
                          child:const SizedBox(
                            width: onlineShopSizes.iconLg*1.2,
                            height: onlineShopSizes.iconLg*1.2,
                            child:  Center(child: Icon(Iconsax.add,color: onlineShopColors.white,))),
                          )
                        ],
                       )
          ],
        ),
      ),
    );
  }
}

