

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlinemarket/common/widget/images/circular_image.dart';
import 'package:onlinemarket/features/personalization/screens/profile/profile.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/images_string.dart';

class onlineShopUserTitle extends StatelessWidget {
  const onlineShopUserTitle({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: onlineShopCircularImage(dark: dark, image: onlineShopImages.user,
      widht: 50,
      height: 50,
      padding: 0,
      ),
    title: Text("Coding with online Shop",style: Theme.of(context).textTheme.headlineSmall!.apply(color: onlineShopColors.white),),
    subtitle:  Text("anvaralimnazarov84@gmail.com",style: Theme.of(context).textTheme.bodyMedium!.apply(color: onlineShopColors.white),),
    trailing: IconButton(onPressed: ()=>onlineShopProfileScreen(),    icon: const Icon(Iconsax.edit,color: onlineShopColors.white,)),
    );
  }
}
