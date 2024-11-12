import 'package:flutter/material.dart';

import '../../../../../utils/constants/text_string.dart';

class Singinbuttom extends StatelessWidget {
  const Singinbuttom({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {},
              child: const Text(onlineShopText.createAccaunt)),
        );
  }
}