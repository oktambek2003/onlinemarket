import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlinemarket/common/widget/appbar/appbar.dart';
import 'package:onlinemarket/common/widget/icon/circular_icon.dart';
import 'package:onlinemarket/common/widget/images/onlineshopRounted_images.dart';
import 'package:onlinemarket/common/widget/product/cart/add_remove_buttom.dart';
import 'package:onlinemarket/common/widget/product/cart/cart_item.dart';
import 'package:onlinemarket/common/widget/product/priceText/price_text.dart';
import 'package:onlinemarket/common/widget/texts/brand_title_text_vefield_icon.dart';
import 'package:onlinemarket/common/widget/texts/product_title.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/images_string.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineShopCardScreen extends StatelessWidget {
  const onlineShopCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OnlineShopAppBar(
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(onlineShopSizes.defaultSpace),
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (_, index) =>const Column(
                    children: [
                      onlineShopCartItem(),
                      SizedBox(
                        height: onlineShopSizes.spaceBtwItem,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          
                          Row(
                            children: [
                              SizedBox(width: 70,),
                              onlineShopProductQuantityWithAddRemoveButtom(),
                            ],
                          ),
                          onlineShopProducrPriceText(price: '256')
                        
                        ],
                      )
                    ],
                  ),
              separatorBuilder: (_, __) => const SizedBox(
                    height: onlineShopSizes.spaceBtwSections,
                  ),
              itemCount: 4),
        ),
      ),
    );
  }
}