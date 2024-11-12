import 'package:flutter/material.dart';

import '../../../../../utils/constants/text_string.dart';

class SingInHeader extends StatelessWidget {
  const SingInHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      onlineShopText.signUPtitle,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}