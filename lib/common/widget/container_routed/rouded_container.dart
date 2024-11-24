import 'package:flutter/material.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';

class onlineShopRoudedContainer extends StatelessWidget {
  const onlineShopRoudedContainer(
      {super.key,
      this.widht,
      this.height,
       this.radius=onlineShopSizes.cardRadiusLg,
      this.child,
       this.showBorder=false,
       this.borderColor=onlineShopColors.borderPrimery,
       this.backgroundColor=onlineShopColors.white,
      this.padding,
      this.margin});

  final double? widht;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widht,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(color: backgroundColor,borderRadius: BorderRadius.circular(radius),border: showBorder?Border.all(color: borderColor):null),
      child: child,
    );
  }
}
