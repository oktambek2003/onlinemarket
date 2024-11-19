import 'package:flutter/material.dart';
import 'package:onlinemarket/common/widget/custom_shapes/containers/circlular_container.dart';
import 'package:onlinemarket/common/widget/custom_shapes/cured_edges/curred_edges_circular.dart';
import 'package:onlinemarket/utils/constants/colors.dart';

class onlineShopHeader extends StatelessWidget {
  const onlineShopHeader({ required this.child,
    super.key,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return onlineShopCuredEdgesWidget(
      child: Container(
        color: onlineShopColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                right: -250,
                top: -150,
          
                child: onlineShopCirclular(
                  backgroundColor: onlineShopColors.textWhite.withOpacity(0.1),
                ),
              ),
          
              Positioned
              (
                top: 100,
                right: -300,
                child: onlineShopCirclular(
                  backgroundColor: onlineShopColors.textWhite.withOpacity(0.1),
                ),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}