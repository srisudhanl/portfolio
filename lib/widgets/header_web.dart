import 'package:flutter/material.dart';
import 'package:portfolio/widgets/logo.dart';

import '../myConst.dart';

class HeaderWeb extends StatelessWidget {
  final Function(int) onNavMenuTap;
  const HeaderWeb({super.key, required this.onNavMenuTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
            onTap: () {},
          ),
          const Spacer(),
          for (int i = 0; i < MyConst.navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                onPressed: () {onNavMenuTap(i);},
                child: Text(
                  MyConst.navTitles[i],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: MyConst.whitePrimary,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
