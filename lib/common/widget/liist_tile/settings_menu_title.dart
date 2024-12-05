import 'package:flutter/material.dart';
import 'package:onlinemarket/utils/constants/colors.dart';

class onlineshopSettingsMenuTitle extends StatelessWidget {
  const onlineshopSettingsMenuTitle(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon,
      this.trailing, this.onTap});
  final String title, subtitle;
  final IconData icon;
  final Widget? trailing;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: onlineShopColors.white,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
