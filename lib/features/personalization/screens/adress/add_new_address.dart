 import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:onlinemarket/common/widget/appbar/appbar.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: OnlineShopAppBar(title: Text("Add new Adress"),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(onlineShopSizes.defaultSpace),
        child: Form(child: 
        Column(
          children: [
            TextFormField(decoration:const InputDecoration(prefixIcon: Icon(Iconsax.user),labelText: "Name"),),
          const  SizedBox(height: onlineShopSizes.spaceBTinputFields,),
           TextFormField(decoration:const InputDecoration(prefixIcon: Icon(Iconsax.mobile),labelText: "Phone Number"),),
          const  SizedBox(height: onlineShopSizes.spaceBTinputFields,),
          Row(
            children: [
               Expanded(child: TextFormField(decoration:const InputDecoration(prefixIcon: Icon(Iconsax.building_31),labelText: "Street"),)),
          const  SizedBox(width: onlineShopSizes.spaceBTinputFields,),
           Expanded(child: TextFormField(decoration:const InputDecoration(prefixIcon: Icon(Iconsax.code),labelText: "Postal Code"),)),
          const  SizedBox(height: onlineShopSizes.spaceBTinputFields,),
            ],
          ),
             const  SizedBox(height: onlineShopSizes.spaceBTinputFields,),
       
          Row(
            children: [
               Expanded(child: TextFormField(decoration:const InputDecoration(prefixIcon: Icon(Iconsax.building),labelText: "City"),)),
          const  SizedBox(width: onlineShopSizes.spaceBTinputFields,),
           Expanded(child: TextFormField(decoration:const InputDecoration(prefixIcon: Icon(Iconsax.activity),labelText: "State"),)),
          const  SizedBox(height: onlineShopSizes.spaceBTinputFields,),
            ],
          ),
                    const  SizedBox(height: onlineShopSizes.spaceBTinputFields,),

           TextFormField(decoration:const InputDecoration(prefixIcon: Icon(Iconsax.global),labelText: "Coutry"),),
          const  SizedBox(height: onlineShopSizes.defaultSpace,),
          SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: Text("Save")),)

          ],
        )),),
      ),
    );
  }
}