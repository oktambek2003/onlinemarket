import 'package:flutter/material.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/images_string.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';

class onlineShopCircularImage extends StatelessWidget {
  const onlineShopCircularImage({
    super.key,
    required this.dark,
     this.widht=56,
     this.height=56,
     this.padding=onlineShopSizes.sm,
    this.fit=BoxFit.cover,
    required this.image,
     this.isNetworkImage=false,
    this.overlayColor,
    this.backgroundColor,
  });

  final bool dark;
  final double widht, height, padding;
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widht,
      height: height,
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: dark ? onlineShopColors.black : onlineShopColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit: fit,
        image:isNetworkImage?NetworkImage(image):AssetImage(image) as ImageProvider,
        
        color: overlayColor,
      ),
    );
  }
}
