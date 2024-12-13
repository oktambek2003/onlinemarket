import 'package:flutter/material.dart';
import 'package:onlinemarket/common/widget/container_routed/rouded_container.dart';
import 'package:onlinemarket/common/widget/product/rating/rating_bar_indicator.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/images_string.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';
import 'package:readmore/readmore.dart';

class onlineShopUserReview extends StatelessWidget {
  const onlineShopUserReview({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = onlineShopFunction.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(onlineShopImages.user),
                ),
                SizedBox(
                  width: onlineShopSizes.spaceBtwItem,
                ),
                Text(
                  "O'ktambek To'xtayev",
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        SizedBox(
          height: onlineShopSizes.spaceBtwItem,
        ),
        Row(
          children: [
            onlineshopRatingBarIndicator(rating: 4),
            Text(
              "01,Nov , 2023",
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(
          height: onlineShopSizes.spaceBtwItem,
        ),
       const ReadMoreText(
            "jfsjoidjfdsojfdsjfpjds;ljdfs;lvjdf;vjlsjvdsojodsvhoshvouh wihfhjfoadsjflk;dsjfodjsfodsj fdsjflk;djfiodsjvjvlsnldsjdsjfldsjfdjvl;nvndsnjfjlsdfjdsl;fjosdfjlsjvlcnv;lfjglasjlsanvaslnvdsjf;ldsj;lvmsl;jdsjvj;lnjlvnsjjsljfls",
            trimLines: 1,
            trimMode: TrimMode.Line,
            trimExpandedText: "Show less",
            trimCollapsedText: "Show more",
            moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: onlineShopColors.primary),
            lessStyle:  TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: onlineShopColors.primary),
            ),
            const SizedBox(height: onlineShopSizes.spaceBtwItem,),
          onlineShopRoudedContainer(
            backgroundColor: dark?onlineShopColors.darkerGrey:onlineShopColors.grey,
            child: Padding(padding: EdgeInsets.all(onlineShopSizes.md),
            child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("OnlineShop",style: Theme.of(context).textTheme.bodyLarge,),
                    Text("02 Nov 2023",style: Theme.of(context).textTheme.bodyMedium,)
                  ],) ,
                  const SizedBox(height: onlineShopSizes.spaceBtwItem,),
                  const ReadMoreText(
            "jfsjoidjfdsojfdsjfpjds;ljdfs;lvjdf;vjlsjvdsojodsvhoshvouh wihfhjfoadsjflk;dsjfodjsfodsj fdsjflk;djfiodsjvjvlsnldsjdsjfldsjfdjvl;nvndsnjfjlsdfjdsl;fjosdfjlsjvlcnv;lfjglasjlsanvaslnvdsjf;ldsj;lvmsl;jdsjvj;lnjlvnsjjsljfls",
            trimLines: 1,
            trimMode: TrimMode.Line,
            trimExpandedText: "Show less",
            trimCollapsedText: "Show more",
            moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: onlineShopColors.primary),
            lessStyle:  TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: onlineShopColors.primary),
            ),
                ],
            ),
            ),

          ),
          SizedBox(height: onlineShopSizes.spaceBtwSections,)
            
      ],
    );
  }
}
