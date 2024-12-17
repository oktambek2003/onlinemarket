import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlinemarket/common/widget/container_routed/rouded_container.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineshopSingleAdress extends StatelessWidget {
  const onlineshopSingleAdress({super.key, required this.selectedAdress});
  final bool selectedAdress;
  @override
  Widget build(BuildContext context) {
    final dark = onlineShopFunction.isDarkMode(context);
    return onlineShopRoudedContainer(
      padding: const EdgeInsets.all(onlineShopSizes.md),
      showBorder: true,
      widht: double.infinity,
      backgroundColor: selectedAdress
          ? onlineShopColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAdress
          ? Colors.transparent
          : dark
              ? onlineShopColors.darkerGrey
              : onlineShopColors.grey,
      margin: const EdgeInsets.only(bottom: onlineShopSizes.spaceBtwItem),
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
              right: 5,
              child: Icon(
                selectedAdress ? Iconsax.tick_circle5 : null,
                color: selectedAdress
                    ? dark
                        ? onlineShopColors.light
                        : onlineShopColors.dark
                    : null,
              )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                                    Text("O'kmtabek To'xtayev",maxLines: 1,style: Theme.of(context).textTheme.titleLarge,overflow: TextOverflow.ellipsis,),

                  SizedBox(height: onlineShopSizes.sm/2,),
                  Text("(+998)94-074-17-04",maxLines: 1,style: Theme.of(context).textTheme.titleLarge,overflow: TextOverflow.ellipsis,),
SizedBox(height: onlineShopSizes.sm/2,), 
                  Text("Surxonfaryo viloyati Qumqo'rg'on tumani",maxLines: 2,style: Theme.of(context).textTheme.titleLarge,overflow: TextOverflow.ellipsis,),


                ],
              )
        ],
      ),
    );
  }
}
