import 'package:flutter/material.dart';
import 'package:onlinemarket/common/widget/custom_shapes/containers/onlineShopHomeHeaders.dart';



class HomeMode extends StatelessWidget {
  const HomeMode({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            onlineShopHeader(child: Column(children: [],),),
          ],
        ),
      ),
    );
  }
}


