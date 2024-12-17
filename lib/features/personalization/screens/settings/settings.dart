import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlinemarket/common/widget/appbar/appbar.dart';
import 'package:onlinemarket/common/widget/custom_shapes/containers/onlineShopHomeHeaders.dart';
import 'package:onlinemarket/common/widget/images/circular_image.dart';
import 'package:onlinemarket/common/widget/liist_tile/settings_menu_title.dart';
import 'package:onlinemarket/common/widget/liist_tile/user_profile_title.dart';
import 'package:onlinemarket/common/widget/texts/section_heading.dart';
import 'package:onlinemarket/features/personalization/screens/adress/adress.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/images_string.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineShopSettingsScreen extends StatelessWidget {
  const onlineShopSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = onlineShopFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            onlineShopHeader(
                child: Column(
              children: [
                OnlineShopAppBar(
                  title: Text(
                    "Account",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: onlineShopColors.white),
                  ),
                ),
                const SizedBox(
                  height: onlineShopSizes.spaceBtwSections,
                ),
                onlineShopUserTitle(dark: dark),
              const  SizedBox(height: onlineShopSizes.spaceBtwSections,),
                
              ],
            )),
            
             Padding(padding:const EdgeInsets.all(onlineShopSizes.defaultSpace),
              child: Column(children: [
              const  onlineShopSectionHeading(title: "Accaunt Settings",showActoinButtom: false,),
              const  SizedBox(height: onlineShopSizes.spaceBtwItem,),
                onlineshopSettingsMenuTitle(title: "My Adress", subtitle: "Set shopping delivery adress", icon:   Iconsax.safe_home,onTap: ()=>Get.to(()=>const UserAdressScreen())
                   
                ,),
              const  SizedBox(height: onlineShopSizes.spaceBtwSections,),
              const  onlineShopSectionHeading(title: "App settings",showActoinButtom: false,),
             const   SizedBox(height: onlineShopSizes.spaceBtwItem,),
             const   onlineshopSettingsMenuTitle(title: "Load data", subtitle: "Upload data to your Cloud Firebase", icon: Iconsax.document_upload)
              ],),
              )
          ],
        ),
      ),
    );
  }
}