
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';

class cartCounter extends StatelessWidget {
  const cartCounter({
    super.key,required this.iconColor, required this.onPressed,
  });
    final Color iconColor;
    final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Iconsax.shopping_bag,
              color: onlineShopColors.white,
            )),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: onlineShopColors.black,
                borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text(
                "2",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: onlineShopColors.white, fontSizeFactor: 0.8),
              ),
            ),
          ),
        )
      ],
    );
  }
}


