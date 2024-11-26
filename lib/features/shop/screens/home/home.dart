// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:onlinemarket/common/widget/custom_shapes/containers/onlineShopHomeHeaders.dart';
import 'package:onlinemarket/common/widget/custom_shapes/containers/search_container.dart';
import 'package:onlinemarket/common/widget/layout/grid_layout.dart';
import 'package:onlinemarket/common/widget/product/product%20cards/product_card_vertical.dart';
import 'package:onlinemarket/common/widget/texts/section_heading.dart';
import 'package:onlinemarket/features/shop/screens/home/appbar.dart';
import 'package:onlinemarket/features/shop/screens/home/home_categories.dart';
import 'package:onlinemarket/features/shop/screens/home/home_slider.dart';
import 'package:onlinemarket/utils/constants/images_string.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';

class HomeMode extends StatelessWidget {
  const HomeMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            onlineShopHeader(
              child: Column(
                children: [
                  const onlineShopAppbarHome(),
                  const SizedBox(
                    height: onlineShopSizes.spaceBtwSections,
                  ),
                  const onlineshopHomeSearch(
                    text: 'Search in Storage',
                    icon: Iconsax.search_normal,
                  ),
                  const SizedBox(
                    height: onlineShopSizes.defaultSpace,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: onlineShopSizes.defaultSpace),
                    child: Column(
                      children: [
                        onlineShopSectionHeading(
                          title: 'Popular Categories',
                          showActoinButtom: false,
                          onPressed: () {},
                        ),
                        const SizedBox(
                          height: onlineShopSizes.spaceBtwItem,
                        ),
                        const onlineShopHomeCategories(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(onlineShopSizes.defaultSpace),
              child: Column(
                children: [
                  const onlineShopPromoSlider(banners: [
                    onlineShopImages.barrners_1,
                    onlineShopImages.barrners_2,
                    onlineShopImages.barrners_3,
                  ]),
                  const SizedBox(
                    height: onlineShopSizes.spaceBtwSections,
                  ),
                  onlineShopSectionHeading(title: "Popular Product",onPressed: (){},),
                  SizedBox(height: onlineShopSizes.spaceBtwItem,),
                  onlineShopGridLayout(
                    itemBuilder: (_, index) =>
                        const onlineShopProductCardVertical(),
                    itemCount: 4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
