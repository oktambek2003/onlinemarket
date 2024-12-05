import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlinemarket/common/widget/appbar/appbar.dart';
import 'package:onlinemarket/common/widget/icon/circular_icon.dart';
import 'package:onlinemarket/common/widget/layout/grid_layout.dart';
import 'package:onlinemarket/common/widget/product/product%20cards/product_card_vertical.dart';
import 'package:onlinemarket/features/shop/screens/home/home.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';

class onlineShopFavoriteScreen extends StatelessWidget {
  const onlineShopFavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: OnlineShopAppBar(title: Text("Wishing",style: Theme.of(context).textTheme.headlineMedium,),actions: [
        onlineShopCircularIcon(icon: Iconsax.add,onPressed: ()=>Get.to(const HomeMode()),
        
        )
      ],),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(onlineShopSizes.defaultSpace),child: Column(children: [
          onlineShopGridLayout(itemCount: 4,   itemBuilder:  (_,index)=>   onlineShopProductCardVertical())
        ],),),
      ),
    );
  }
}