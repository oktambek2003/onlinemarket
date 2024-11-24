import 'package:flutter/material.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';

class onlineShopRoundedImages extends StatelessWidget {
  const onlineShopRoundedImages({
    super.key,
     this.widht,
     this.height,
    required this.imageUrl,
     this.applyImagesRadius=true,
    this.border,
     this.backgroundColor=onlineShopColors.light,
    this.fit=BoxFit.cover,
    this.padding,
     this.isNetworkImage=false ,
    this.onPress,
     this.borderRadis=onlineShopSizes.md,
  });

  final double? widht, height;
  final String imageUrl;
  final bool applyImagesRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPress;
  final double borderRadis;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: widht,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            color: backgroundColor,
            border: border,
            borderRadius: BorderRadius.circular(borderRadis)),
        child: ClipRRect(
            borderRadius: applyImagesRadius
                ? BorderRadius.circular(borderRadis)
                : BorderRadius.zero,
            child: Image(
              image: isNetworkImage
                  ? NetworkImage(imageUrl)
                  : AssetImage(imageUrl) as ImageProvider,
              fit: fit,
            )),
      ),
    );
  }
}
