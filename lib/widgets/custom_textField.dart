import 'package:flutter/material.dart';

import '../myConst.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final int maxLines;
  const CustomTextField({super.key, this.controller, this.hintText, this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      style: const TextStyle(color: MyConst.scaffoldBg),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16),
          filled: true,
          fillColor: MyConst.whiteSecondary,
          focusedBorder: buildOutlineInputBorder(),
          enabledBorder: buildOutlineInputBorder(),
          border: buildOutlineInputBorder(),
          hintText: hintText,
          hintStyle: const TextStyle(color: MyConst.hintDark)),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );
  }
}
