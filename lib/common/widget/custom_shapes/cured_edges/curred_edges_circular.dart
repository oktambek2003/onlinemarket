import 'package:flutter/material.dart';

import 'cured_edges.dart';

class onlineShopCuredEdgesWidget extends StatelessWidget {
  const onlineShopCuredEdgesWidget({
    this.child,
    super.key,
  });
final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: onlineShopCustomCuredEdges(),
      child: child
    );
  }
}

