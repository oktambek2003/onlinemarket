import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class onlineShopCirclular extends StatelessWidget {
  onlineShopCirclular({
    super.key,
    this.widht = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    this.backgroundColor = onlineShopColors.white, this.margin,
  });
  final double? widht;
  final double? height;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: margin,
      width: widht,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius), color: backgroundColor,),
    );
  }
}
