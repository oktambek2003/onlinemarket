import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlinemarket/common/widget/appbar/appbar.dart';
import 'package:onlinemarket/common/widget/custom_shapes/cured_edges/curred_edges_circular.dart';
import 'package:onlinemarket/common/widget/icon/circular_icon.dart';
import 'package:onlinemarket/common/widget/images/onlineshopRounted_images.dart';
import 'package:onlinemarket/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:onlinemarket/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:onlinemarket/features/shop/screens/product_details/widgets/ratingandshare.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/images_string.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineshopProductDetails extends StatelessWidget {
  const onlineshopProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = onlineShopFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            onlineSopProductImageSlider(dark: dark),
              const Padding(padding: EdgeInsets.only(right: onlineShopSizes.defaultSpace,left: onlineShopSizes.defaultSpace,bottom: onlineShopSizes.defaultSpace),
              child: Column(
                children: [
               ratingAndShare(),
               onlineshopProductMetaData()
                ],
              ),
              )
          ],
        ),
      ),
    );
  }
}
