

import 'package:flutter/material.dart';
import 'package:onlinemarket/features/shop/screens/product_rewiev/widget/product_indicator_rating.dart';

class onlineShopOverlalProductIndicator extends StatelessWidget {
  const onlineShopOverlalProductIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: Text(
              "4.8",
              style: Theme.of(context).textTheme.displayLarge,
            )),
        Expanded(
          flex: 7,
          child: Column(
            children: [onlinessShopRatingProgressIndicator(value: 1,text: "5",),
            onlinessShopRatingProgressIndicator(value: 0.8,text: "4",),
            onlinessShopRatingProgressIndicator(value: 0.6,text: "3",),
            onlinessShopRatingProgressIndicator(value: 0.4,text: "2",),
            onlinessShopRatingProgressIndicator(value: 0.2,text: "1",)
            ],
          ),
        )
      ],
    );
  }
}