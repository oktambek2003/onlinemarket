import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:onlinemarket/common/widget/custom_shapes/containers/onlineShopHomeHeaders.dart';
import 'package:onlinemarket/features/shop/screens/widgets/appbar.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/constants/sizes.dart';
import 'package:onlinemarket/utils/device/device_utils.dart';


class HomeMode extends StatelessWidget {
  const HomeMode({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            onlineShopHeader(
              child: Column(
                children: [
                 const onlineShopAppbarHome(),
                  Container(
                    width:onlineShopUtils.getScreenWidht(),
                    padding:const EdgeInsets.all(onlineShopSizes.md),
                    decoration: BoxDecoration(
                      color:Colors.transparent,
                      borderRadius: BorderRadius.circular(onlineShopSizes.cardRadiusLg),
                      border: Border.all(color:onlineShopColors.grey) 
                    ),
                    child:
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
