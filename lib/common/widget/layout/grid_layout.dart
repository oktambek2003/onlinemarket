import 'package:flutter/material.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';

class onlineShopGridLayout extends StatelessWidget {
  const onlineShopGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtend=288,
    required this.itemBuilder,
  });
  final int itemCount;
  final double? mainAxisExtend;
  final Widget? Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: mainAxisExtend,
          crossAxisSpacing: onlineShopSizes.gridViewSpacing,
          mainAxisSpacing: onlineShopSizes.gridViewSpacing,
        ),
      itemBuilder: itemBuilder,
      
    );
  }
}
