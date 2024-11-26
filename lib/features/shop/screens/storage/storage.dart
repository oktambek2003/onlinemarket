import 'package:flutter/material.dart';
import 'package:onlinemarket/common/widget/appbar/appbar.dart';
import 'package:onlinemarket/common/widget/container_routed/rouded_container.dart';
import 'package:onlinemarket/common/widget/custom_shapes/containers/search_container.dart';
import 'package:onlinemarket/common/widget/images/circular_image.dart';
import 'package:onlinemarket/common/widget/layout/grid_layout.dart';
import 'package:onlinemarket/common/widget/product/cart/cart_menu_icon.dart';
import 'package:onlinemarket/common/widget/texts/brand_title_text.dart';
import 'package:onlinemarket/common/widget/texts/brand_title_text_vefield_icon.dart';
import 'package:onlinemarket/common/widget/texts/section_heading.dart';
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
    return Scaffold(
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
                            
                            return GestureDetector(
                              onTap: () {},
                              child: onlineShopRoudedContainer(
                                padding:
                                    const EdgeInsets.all(onlineShopSizes.sm),
                                showBorder: true,
                                backgroundColor: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: onlineShopCircularImage(
                                        dark: dark,
                                        image: onlineShopImages.colthIcon,
                                        isNetworkImage: false,
                                        backgroundColor: Colors.transparent,
                                        overlayColor: dark
                                            ? onlineShopColors.white
                                            : onlineShopColors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: onlineShopSizes.spaceBtwItem / 2,
                                    ),
                                        Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const onlineShopBrandtitleWithVerifieldIcon(
                                            title: "Nike",
                                            brandtextSizes: TextSizes.large,
                                          ),
                                          Text(
                                            
                                            '256 products fsdafadsgasgfasgsdgf' ,
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}
