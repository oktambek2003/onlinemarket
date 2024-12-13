import 'package:flutter/material.dart';
import 'package:onlinemarket/common/widget/custom_shapes/containers/circlular_container.dart';
import 'package:onlinemarket/utils/constants/colors.dart';
import 'package:onlinemarket/utils/helpers/helper_function.dart';

class onlineshopChoice extends StatelessWidget {
  const onlineshopChoice(
      {super.key, required this.text, required this.selected, this.onSelected});
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label:  onlineShopFunction.getColor(text)!=null?const SizedBox(): Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? onlineShopColors.white : null),
        avatar:onlineShopFunction.getColor(text)!=null? onlineShopCirclular(widht: 50,height: 50,backgroundColor:onlineShopFunction.getColor(text)!,
        ):null,
        shape:onlineShopFunction.getColor(text)!=null?const CircleBorder( ):null,
        labelPadding:onlineShopFunction.getColor(text)!=null? EdgeInsets.all(0):null,
        padding:onlineShopFunction.getColor(text)!=null? EdgeInsets.all(0):null,
        backgroundColor:onlineShopFunction.getColor(text)!=null?   onlineShopFunction.getColor(text)!:null,
      ),
    );
  }
}
