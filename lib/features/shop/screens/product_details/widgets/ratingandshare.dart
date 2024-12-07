
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';

class ratingAndShare extends StatelessWidget {
  const ratingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Iconsax.star5,color: Colors.amber,size: 24,),
            SizedBox(width: onlineShopSizes.spaceBtwItem/2,),
            Text.rich(TextSpan(children: [
              TextSpan(text: "5.0",style: Theme.of(context).textTheme.bodyLarge),
             const TextSpan(text: "(199)")
            ]))
          ],
        ),
        IconButton(onPressed: (){}, icon: const Icon(Icons.share,size: onlineShopSizes.iconMd,))
      ],
    );
  }
}