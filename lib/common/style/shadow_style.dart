import 'package:flutter/material.dart';
import 'package:onlinemarket/utils/constants/colors.dart';

class onlineShopShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: onlineShopColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
   static final horizontalProductShadow = BoxShadow(
    color: onlineShopColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
