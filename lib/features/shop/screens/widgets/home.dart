import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:onlinemarket/common/widget/custom_shapes/containers/onlineShopHomeHeaders.dart';
import 'package:onlinemarket/common/widget/custom_shapes/containers/search_container.dart';
import 'package:onlinemarket/features/shop/screens/widgets/appbar.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';


class HomeMode extends StatelessWidget {
  const HomeMode({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            onlineShopHeader(
              child: Column(
                children: [
                  onlineShopAppbarHome(),
                  SizedBox(
                    height: onlineShopSizes.spaceBtwSections,
                  ),
                  onlineshopHomeSearch(
                    text: 'Search in Storage',icon: Iconsax.search_normal,
                  ),
                  SizedBox(height: onlineShopSizes.defaultSpace,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
