
import 'package:flutter/material.dart';
import 'package:onlinemarket/common/widget/image_text_widgets/vertical_image.dart';
import 'package:onlinemarket/utils/constants/images_string.dart';

class onlineShopHomeCategories extends StatelessWidget {
  const onlineShopHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return onlineShopVerticalImages(
            image: onlineShopImages.sportIcon,
            title: "Shoes",
            onTap: () {},
          );
        },
      ),
    );
  }
}