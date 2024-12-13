import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlinemarket/utils/constants/colors.dart';

class onlineshopRatingBarIndicator extends StatelessWidget {
  const onlineshopRatingBarIndicator({
    super.key, required this.rating,
  });
  final double rating;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
        rating: rating,
        itemSize: 20,
        unratedColor: onlineShopColors.grey,
        itemBuilder: (_, __) => Icon(
              Iconsax.star1,
              color: onlineShopColors.primary,
            ));
  }
}
