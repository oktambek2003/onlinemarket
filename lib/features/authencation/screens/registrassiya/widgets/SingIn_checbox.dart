import 'package:flutter/material.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';

class SinginChecbox extends StatelessWidget {
  const SinginChecbox({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = onlineShopFunction.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(
          width: onlineShopSizes.spaceBtwItem,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${onlineShopText.iagreeToo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${onlineShopText.privekyPolicy} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color:
                      dark ? onlineShopColors.white : onlineShopColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark
                      ? onlineShopColors.white
                      : onlineShopColors.primary)),
          TextSpan(text: 'and ', style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${onlineShopText.termOfUse} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color:
                      dark ? onlineShopColors.white : onlineShopColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark
                      ? onlineShopColors.white
                      : onlineShopColors.primary)),
        ]))
      ],
    );
  }
}
