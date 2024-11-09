import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/images_string.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';

class onlineShopHeader extends StatelessWidget {
  const onlineShopHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 150,
            image: AssetImage(dark
                ? onlineShopImages.darkApplogo
                : onlineShopImages.lightApplogo)),
        Text(onlineShopText.loginSubTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(
          height: onlineShopSizes.sm,
        ),
        Text(
          onlineShopText.logintitle,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
