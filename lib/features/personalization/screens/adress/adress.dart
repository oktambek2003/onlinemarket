import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlinemarket/common/widget/appbar/appbar.dart';
import 'package:onlinemarket/common/widget/container_routed/rouded_container.dart';
import 'package:onlinemarket/features/personalization/screens/adress/add_new_address.dart';
import 'package:get/get.dart';
import 'package:onlinemarket/features/personalization/screens/adress/widgets/single_adress.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';

class UserAdressScreen extends StatelessWidget {
  const UserAdressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
floatingActionButton: FloatingActionButton(onPressed:() => Get.to(()=>const AddNewAddressScreen()),
child: const Icon(Iconsax.add,color: Colors.white,

),
backgroundColor: onlineShopColors.primary,

),
appBar: OnlineShopAppBar(
  showBackArrow: true,
  title: Text("Addresses",style: Theme.of(context).textTheme.headlineSmall,),
  
),
body:const SingleChildScrollView(
  child: Padding(padding: EdgeInsets.all( onlineShopSizes.defaultSpace),
  child: Column(
    children: [
onlineshopSingleAdress(selectedAdress: true),
onlineshopSingleAdress(selectedAdress: false)
    ],
  ),),
),
    );
  }
} 