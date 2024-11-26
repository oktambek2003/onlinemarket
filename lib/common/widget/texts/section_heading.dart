
import 'package:flutter/material.dart';

class onlineShopSectionHeading extends StatelessWidget {
  const onlineShopSectionHeading({
    super.key, this.textColor,  this.showActoinButtom=true, required this.title,  this.buttomTitle="View all", this.onPressed,
  });
  final Color? textColor;
  final bool showActoinButtom;
  final String title, buttomTitle ;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
       if(  showActoinButtom) TextButton(onPressed: onPressed, child:  Text(buttomTitle)),
      ],
    );
  }
}
