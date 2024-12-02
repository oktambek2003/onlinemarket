import 'package:flutter/material.dart';
import 'package:onlinemarket/common/widget/brands/brands_show_case.dart';
import 'package:onlinemarket/common/widget/layout/grid_layout.dart';
import 'package:onlinemarket/common/widget/product/product%20cards/product_card_vertical.dart';
import 'package:onlinemarket/common/widget/texts/section_heading.dart';
import 'package:onlinemarket/utils/constants/images_string.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineShopCategoryTab extends StatelessWidget {
  const onlineShopCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = onlineShopFunction.isDarkMode(context);
    return ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          Padding(
            padding: EdgeInsets.all(onlineShopSizes.defaultSpace),
            child: Column(
              children: [
                onlineshopBrandShowCase(
                  dark: dark,
                  images: const [
                    onlineShopImages.products10,
                    onlineShopImages.products11,
                    onlineShopImages.products12
                  ],
                ),
                const SizedBox(
                  height: onlineShopSizes.spaceBtwItem,
                ),
                onlineShopSectionHeading(
                  title: "your might Like",
                  showActoinButtom: true,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: onlineShopSizes.spaceBtwItem,
                ),
                onlineShopGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) =>
                        const onlineShopProductCardVertical())
              ],
            ),
          ),
        ]);
  }
}
