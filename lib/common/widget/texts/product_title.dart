import 'package:flutter/material.dart';

class onlineShopProductTitle extends StatelessWidget {
  const onlineShopProductTitle(
      {super.key,
      required this.title,
       this.smallSize=false,
       this.maxLine=2,
      this.align=TextAlign.left});
  final String title;
  final bool smallSize;
  final int maxLine;
  final TextAlign? align;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:smallSize? Theme.of(context).textTheme.labelLarge:Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine,
      textAlign: align ,
    );
  }
}
