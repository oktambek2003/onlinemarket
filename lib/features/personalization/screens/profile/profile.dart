import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlinemarket/common/widget/appbar/appbar.dart';
import 'package:onlinemarket/common/widget/images/circular_image.dart';
import 'package:onlinemarket/common/widget/texts/section_heading.dart';
import 'package:onlinemarket/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:onlinemarket/features/shop/screens/home/appbar.dart';
import 'package:onlinemarket/utils/constants/images_string.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineShopProfileScreen extends StatelessWidget {
  const onlineShopProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = onlineShopFunction.isDarkMode(context);
    return Scaffold(
      appBar: OnlineShopAppBar(
        showBackArrow: true,
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(onlineShopSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    onlineShopCircularImage(
                      dark: dark,
                      image: onlineShopImages.user,
                      widht: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text("change Profile Picture")),
                  ],
                ),
              ),
              const SizedBox(
                height: onlineShopSizes.spaceBtwItem / 2,
              ),
              const Divider(),
              const SizedBox(
                height: onlineShopSizes.spaceBtwItem,
              ),
              const onlineShopSectionHeading(
                title: "Profile information",
                showActoinButtom: false,
              ),
              const SizedBox(
                height: onlineShopSizes.spaceBtwItem,
              ),
              profileMenu(
                title: "Name",
                value: "To'xtayev O'ktambe",
                onTap: (){},
              ),
              profileMenu(onTap: (){}, title: "Username", value: "oktambek"),
           const   SizedBox(height: onlineShopSizes.spaceBtwItem,),
             const Divider(),
            const SizedBox(height: onlineShopSizes.spaceBtwItem,),
            profileMenu(onTap: (){}, title: "User ID", value: "123143",icon: Iconsax.copy,),
            profileMenu(onTap: (){}, title: "E-mail", value: "anvaralimnazarov84@gmail.com"),
            profileMenu(onTap: (){}, title: "Phone Numer", value: "+998940741704"),
            profileMenu(onTap: (){}, title: "Gender", value: "Male"),
            profileMenu(onTap: (){}, title: "Data Birthday", value: "12.02.2003"),
            const Divider(),
            const   SizedBox(height: onlineShopSizes.spaceBtwItem,),
            Center(child: TextButton(onPressed: (), child: Text("Close Accunt",style: TextStyle(color: Colors.red),)),)

            ],
          ),
        ),
      ),
    );
  }
}
