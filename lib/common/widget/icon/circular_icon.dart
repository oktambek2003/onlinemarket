import 'package:flutter/material.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineShopCircularIcon extends StatelessWidget {
  const onlineShopCircularIcon({
    super.key,
    this.widht,
    this.height,
    this.size=onlineShopSizes.lg,
    required this.icon,
    this.color,
    this.backgroundcolor,
     this.onPressed,
  });

  final double? widht, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundcolor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widht,
      height: height,
      decoration: BoxDecoration(
          color: backgroundcolor != null
              ? backgroundcolor!
              : onlineShopFunction.isDarkMode(context)
                  ? onlineShopColors.black.withOpacity(0.9)
                  : onlineShopColors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(100)
                  ),
                  child: IconButton(onPressed: onPressed, icon: Icon(icon,color:color ,size: size,)),
    );
  }
}
