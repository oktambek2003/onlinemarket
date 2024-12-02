import 'package:flutter/material.dart';
import 'package:onlinemarket/common/widget/appbar/appbar.dart';
import 'package:onlinemarket/common/widget/appbar/tabbar.dart';
import 'package:onlinemarket/common/widget/brands/brand_card.dart';
import 'package:onlinemarket/common/widget/brands/brands_show_case.dart';
import 'package:onlinemarket/common/widget/container_routed/rouded_container.dart';
import 'package:onlinemarket/common/widget/custom_shapes/containers/search_container.dart';
import 'package:onlinemarket/common/widget/images/circular_image.dart';
import 'package:onlinemarket/common/widget/layout/grid_layout.dart';
import 'package:onlinemarket/common/widget/product/cart/cart_menu_icon.dart';
import 'package:onlinemarket/common/widget/texts/brand_title_text.dart';
import 'package:onlinemarket/common/widget/texts/brand_title_text_vefield_icon.dart';
import 'package:onlinemarket/common/widget/texts/section_heading.dart';
import 'package:onlinemarket/features/shop/screens/storage/widgets/category_tab.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/enums.dart';
import 'package:onlinemarket/utils/constants/images_string.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineShopStorage extends StatelessWidget {
  const onlineShopStorage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = onlineShopFunction.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: OnlineShopAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            cartCounter(
              onPressed: () {},
              iconColor: dark ? onlineShopColors.light : onlineShopColors.dark,
            ),
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  pinned: true,
                  automaticallyImplyLeading: false,
                  floating: true,
                  backgroundColor:
                      dark ? onlineShopColors.black : onlineShopColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(onlineShopSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const SizedBox(
                          height: onlineShopSizes.spaceBtwItem,
                        ),
                        const onlineshopHomeSearch(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: onlineShopSizes.spaceBtwSections,
                        ),
                        onlineShopSectionHeading(
                          title: "Featured Brands",
                          showActoinButtom: true,
                          onPressed: () {},
                        ),
                        onlineShopGridLayout(
                            mainAxisExtend: 80,
                            itemCount: 4,
                            itemBuilder: (_, index) {
                              return onlineShopBrandCard(
                                dark: dark,
                                showBorder: true,
                              );
                            })
                      ],
                    ),
                  ),
                  bottom: const onlineShopTabbar(tabs: [
                    Tab(
                      child: Text("Sports"),
                    ),
                    Tab(
                      child: Text("Furniture"),
                    ),
                    Tab(
                      child: Text("Electronic"),
                    ),
                    Tab(
                      child: Text("Clothes"),
                    ),
                    Tab(
                      child: Text(" Conmetics"),
                    )
                  ]),
                )
              ];
            },
            body:const TabBarView(children: [
             onlineShopCategoryTab(),
               onlineShopCategoryTab(),
                 onlineShopCategoryTab(),
                   onlineShopCategoryTab(),
                     onlineShopCategoryTab()
            ])),
      ),
    );
  }
}