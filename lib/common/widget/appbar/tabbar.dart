import 'package:flutter/material.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/device/device_utils.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineShopTabbar extends StatelessWidget implements PreferredSizeWidget {
  const onlineShopTabbar({super.key, required this.tabs});
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = onlineShopFunction.isDarkMode(context);
    return Material(
      color: dark?onlineShopColors.black:onlineShopColors.white,
      child: TabBar(tabs: tabs,
      isScrollable: true,
      indicatorColor: onlineShopColors.primary,
    labelColor:dark? onlineShopColors.white:onlineShopColors.primary,
    unselectedLabelColor: onlineShopColors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(onlineShopUtils.getAppbarHeight());
}
