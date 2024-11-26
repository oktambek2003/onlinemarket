
import 'package:flutter/material.dart';
import 'package:onlinemarket/common/widget/appbar/appbar.dart';
import 'package:onlinemarket/common/widget/product/cart/cart_menu_icon.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/text_string.dart';


class onlineShopAppbarHome extends StatelessWidget {
  const onlineShopAppbarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnlineShopAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            onlineShopText.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: onlineShopColors.grey),
          ),
          Text(
            onlineShopText.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: onlineShopColors.white),
          ),
        ],
      ),
      actions: [cartCounter(onPressed: (){},iconColor: onlineShopColors.white,)],
    );
  }
}
