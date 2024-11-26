import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onlinemarket/common/widget/custom_shapes/containers/circlular_container.dart';
import 'package:onlinemarket/common/widget/images/onlineshopRounted_images.dart';
import 'package:onlinemarket/features/shop/controller/home_controller.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';

class onlineShopPromoSlider extends StatelessWidget {
  const onlineShopPromoSlider({
    super.key, required this.banners,
  });
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index),
            ),
            items: banners.map( (url)=>onlineShopRoundedImages(imageUrl:url )).toList(),),
        const SizedBox(
          height: onlineShopSizes.spaceBtwItem,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  onlineShopCirclular(
                    margin: const EdgeInsets.only(right: 10),
                    widht: 20,
                    height: 4,
                    backgroundColor: controller.caurselCurrentIndex == i
                        ? onlineShopColors.primary
                        : onlineShopColors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
