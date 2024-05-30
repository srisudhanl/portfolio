import 'package:flutter/material.dart';

import '../myConst.dart';

class FooterWidget extends StatefulWidget {
  const FooterWidget({super.key});

  @override
  State<FooterWidget> createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: const Text("Made by Srisudhan with Flutter.",style: TextStyle(fontWeight: FontWeight.w400,color: MyConst.whiteSecondary),),
    );
  }
}
