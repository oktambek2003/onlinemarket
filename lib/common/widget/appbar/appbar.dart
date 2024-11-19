import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/device/device_utils.dart';

class OnlineShopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OnlineShopAppBar(
      {super.key,
      this.title,
       this.showBackArrow=false,
      this.leadingIcon,
       this.actions,
      this.leadingOnPress});
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: onlineShopSizes.md),
      child: AppBar( 
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Iconsax.arrow_left))
            :leadingIcon!=null? IconButton(onPressed: () => leadingOnPress, icon: Icon(leadingIcon)
      ):null,
      title: title,
      actions: actions,
    ));
  }

  @override
  Size get preferredSize => Size.fromHeight(onlineShopUtils.getAppbarHeight());
}
