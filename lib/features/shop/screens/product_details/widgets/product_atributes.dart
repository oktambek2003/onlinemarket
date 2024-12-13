import 'package:flutter/material.dart';
import 'package:onlinemarket/common/widget/appbar/appbar.dart';
import 'package:onlinemarket/common/widget/chip/choice_chip.dart';
import 'package:onlinemarket/common/widget/container_routed/rouded_container.dart';
import 'package:onlinemarket/common/widget/product/priceText/price_text.dart';
import 'package:onlinemarket/common/widget/texts/product_title.dart';
import 'package:onlinemarket/common/widget/texts/section_heading.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineShopProductAtributes extends StatelessWidget {
  const onlineShopProductAtributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = onlineShopFunction.isDarkMode(context);
    return Column(children: [
      onlineShopRoudedContainer(
        padding: const EdgeInsets.all(onlineShopSizes.md),
        backgroundColor:
            dark ? onlineShopColors.darkerGrey : onlineShopColors.grey,
        child: Column(
          children: [
            Row(
              children: [
                const onlineShopSectionHeading(
                  title: "Variation",
                  showActoinButtom: false,
                ),
                const SizedBox(
                  width: onlineShopSizes.spaceBtwItem,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const onlineShopProductTitle(
                          title: "Price : ",
                          smallSize: true,
                        ),
                        const SizedBox(
                          width: onlineShopSizes.spaceBtwItem,
                        ),
                        Text(
                          '\$25',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .apply(decoration: TextDecoration.lineThrough),
                        ),
                        const SizedBox(
                          width: onlineShopSizes.spaceBtwItem,
                        ),
                        const onlineShopProducrPriceText(price: '20'),
                      ],
                    ),
                    Row(children: [
                      const onlineShopProductTitle(title: "Stock : ",smallSize: true,),
                      Text("In Stock",style: Theme.of(context).textTheme.titleMedium,)

                    ],)
                  ],
                )
              ],
            ),
          const  onlineShopProductTitle(title: "This is the Description of the Product and it can go upto max 4 lines",smallSize: true,maxLine: 4,),
            
          ],
        ),
      )
   ,const SizedBox(height: onlineShopSizes.spaceBtwItem,),
   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const  onlineShopSectionHeading(title: 'Colors',showActoinButtom: false,),
    const  SizedBox(height: onlineShopSizes.spaceBtwItem/2,),
Wrap(
  spacing: 8,
  children: [
    onlineshopChoice(text: "Green", selected: false,onSelected: (vaue){},),
onlineshopChoice(text: "Yellow", selected: false,onSelected: (value){},),
onlineshopChoice(text: "Blue", selected: true,onSelected: (value){},),

  ],
)
    ],
   ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const  onlineShopSectionHeading(title: 'Size',showActoinButtom: false,),
    const  SizedBox(height: onlineShopSizes.spaceBtwItem/2,),
Wrap(
  spacing: 8,
  children: [
    onlineshopChoice(text: "EU 34", selected: true,onSelected: (value){},),
onlineshopChoice(text: "Eu 36", selected: false,onSelected: (value){}),
onlineshopChoice(text: "Eu 38", selected: false,onSelected: (value){}),

  ],
)
    ],
   )
    ]);
  }
}
