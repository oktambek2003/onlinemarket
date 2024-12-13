import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlinemarket/common/widget/appbar/appbar.dart';
import 'package:onlinemarket/features/shop/screens/product_rewiev/widget/product_indicator_rating.dart';
import 'package:onlinemarket/features/shop/screens/product_rewiev/widget/rating_product_progress.dart';
import 'package:onlinemarket/common/widget/product/rating/rating_bar_indicator.dart';
import 'package:onlinemarket/features/shop/screens/product_rewiev/widget/user_review.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/device/device_utils.dart';

class ProductReriewsScreen extends StatelessWidget {
  const ProductReriewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:const OnlineShopAppBar(
        title: Text(
          "Reviews & Rating",
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.all(onlineShopSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Text(
                  "Rating and Reviews are verifed and are from people who use the some type of device that you use."),
            const  SizedBox(
                height: onlineShopSizes.spaceBtwItem,
              ),
             const onlineShopOverlalProductIndicator(),
            const  onlineshopRatingBarIndicator(rating: 3.5,),
              Text("12,611",style: Theme.of(context).textTheme.bodySmall    ,),
              const SizedBox( height: onlineShopSizes.spaceBtwSections,),
            const  onlineShopUserReview(),
             const  onlineShopUserReview(),
              const  onlineShopUserReview(),
               const  onlineShopUserReview()

            ],
          ),
        ),
      ),
    );
  }
}
