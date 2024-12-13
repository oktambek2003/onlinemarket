import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlinemarket/common/widget/appbar/appbar.dart';
import 'package:onlinemarket/common/widget/custom_shapes/cured_edges/curred_edges_circular.dart';
import 'package:onlinemarket/common/widget/icon/circular_icon.dart';
import 'package:onlinemarket/common/widget/images/onlineshopRounted_images.dart';
import 'package:onlinemarket/common/widget/texts/section_heading.dart';
import 'package:onlinemarket/features/shop/screens/product_details/widgets/bottom_add_to_card_widget.dart';
import 'package:onlinemarket/features/shop/screens/product_details/widgets/product_atributes.dart';
import 'package:onlinemarket/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:onlinemarket/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:onlinemarket/features/shop/screens/product_details/widgets/ratingandshare.dart';
import 'package:onlinemarket/features/shop/screens/product_rewiev/product_reriews.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/images_string.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';
import 'package:readmore/readmore.dart';

class onlineshopProductDetails extends StatelessWidget {
  const onlineshopProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    
    final dark = onlineShopFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: onlineShopBottomAddToCardWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            onlineSopProductImageSlider(dark: dark),
            Padding(
              padding: const EdgeInsets.only(
                  right: onlineShopSizes.defaultSpace,
                  left: onlineShopSizes.defaultSpace,
                  bottom: onlineShopSizes.defaultSpace),
              child: Column(
                children: [
                  const ratingAndShare(),
                  const onlineshopProductMetaData(),
                  const onlineShopProductAtributes(),
                  const SizedBox(
                    height: onlineShopSizes.spaceBtwSections,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text("Checout"))),
                  const SizedBox(
                    height: onlineShopSizes.spaceBtwSections,
                  ),
                  const onlineShopSectionHeading(
                    title: "Description",
                    showActoinButtom: false,
                  ),
                  const SizedBox(
                    height: onlineShopSizes.spaceBtwItem,
                  ),
               const   ReadMoreText(
                    "This is a Product description for Blsdfdsfdsfhdsj hfkeh fkdsahfklhdsakjlfhadsladsklfhkldsaagfkldshfkjldshfkjladshklfjhdsklfhdsklhfdskjlajfkladshue Nike Sleeve less vest. There are more things can be added but i ",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Show more",
                    trimExpandedText: "Less",
                    moreStyle:  TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:  TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: onlineShopSizes.spaceBtwItem,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
 onlineShopSectionHeading(
  showActoinButtom: false,
                    title: "Reviews(199)",
                    onPressed: () {},
                  ),
                  IconButton(onPressed: ()=>Get.to(()=>const ProductReriewsScreen()), icon:const Icon(Iconsax.arrow_right_3,size: 18,))
                    ],
                  ),
                 
                  const SizedBox(
                    height: onlineShopSizes.spaceBtwSections,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
