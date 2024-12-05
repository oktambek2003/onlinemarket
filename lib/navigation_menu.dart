import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlinemarket/features/personalization/screens/settings/settings.dart';
import 'package:onlinemarket/features/shop/screens/home/home.dart';
import 'package:onlinemarket/features/shop/screens/storage/storage.dart';
import 'package:onlinemarket/features/shop/screens/wishing/wishing.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class  onlineShopNavigationMenu extends StatelessWidget {
  const onlineShopNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = onlineShopFunction.isDarkMode(context);
    final controller = Get.put(NavigattionController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            backgroundColor:
                dark ? onlineShopColors.black : onlineShopColors.white,
            indicatorColor: dark
                ? onlineShopColors.white.withOpacity(0.1)
                : onlineShopColors.black.withOpacity(0.1),
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectIndex.value,
            onDestinationSelected: (index) =>
                controller.selectIndex.value = index,
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
              NavigationDestination(icon: Icon(Iconsax.shop), label: "Storage"),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: "Wishlist"),
              NavigationDestination(icon: Icon(Iconsax.user), label: "Profile")
            ]),
      ),
      body: Obx(()=> controller.screen[controller.selectIndex.value]),
    );
  }
}

class NavigattionController extends GetxController {
  final Rx<int> selectIndex = 0.obs;
  final screen = [
   const HomeMode(),
    const onlineShopStorage(),
    
  const onlineShopFavoriteScreen(),
   const onlineShopSettingsScreen()
  ];
}
