import 'package:flutter/material.dart';

import '../myConst.dart';

class LogoWidget extends StatelessWidget {
  final VoidCallback? onTap;
  const LogoWidget({super.key,this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: const Text(
        "SS",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          color: MyConst.yellowSecondary,
        ),
      ),
    );
  }
}
