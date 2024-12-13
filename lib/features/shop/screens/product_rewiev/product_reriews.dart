import 'package:flutter/material.dart';
import 'package:onlinemarket/common/widget/appbar/appbar.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/device/device_utils.dart';

class ProductReriewsScreen extends StatelessWidget {
  const ProductReriewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OnlineShopAppBar(title: Text("Reviews & Rating",),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(onlineShopSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Rating and Reviews are verifed and are from people who use the some type of device that you use."),
            SizedBox(height: onlineShopSizes.spaceBtwItem,),
            Row(
              children: [
                Expanded(child: Text("4.8",style: Theme.of(context).textTheme.displayLarge,)),
                
                      Expanded(
                        child: Column(children: [
                          Row(
                            children: [
                              Text("5",style: Theme.of(context).textTheme.bodyMedium,),
                              Expanded(
                                child: SizedBox(
                                  width: onlineShopUtils.getScreenWidht()*0.8,
                                  child: LinearProgressIndicator(value: 0.5,
                                  minHeight: 11 ,
                                  backgroundColor: onlineShopColors.grey,
                                  valueColor:AlwaysStoppedAnimation( onlineShopColors.primary),
                                  borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],),
                      )
                  ],
                )

              ],
            

        
        ),
        ),
      ),
    );
  }
}