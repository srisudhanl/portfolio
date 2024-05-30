import 'package:flutter/material.dart';

import '../myConst.dart';
import 'logo.dart';

class HeaderMobile extends StatelessWidget {
  final VoidCallback? onTap;
  final VoidCallback? onMenuTap;
  const HeaderMobile({super.key,this.onTap,this.onMenuTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.transparent,
            MyConst.bgLight1,
          ],
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          LogoWidget(
            onTap: onTap,
          ),
          const Spacer(),
          IconButton(
            onPressed: onMenuTap,
            icon: const Icon(Icons.menu_rounded),
          ),
          const SizedBox(width: 15,),
        ],
      ),
    );
  }
}
