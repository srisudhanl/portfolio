import 'package:flutter/material.dart';

import '../myConst.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450),
          child: Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              for (int i = 0; i < MyConst.platformItems.length; i++)
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: MyConst.bgLight2,
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    leading: SizedBox(width: 30, height: 30, child: Image.asset(MyConst.platformItems[i]["img"])),
                    title: Text(MyConst.platformItems[i]["title"]),
                  ),
                )
            ],
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Wrap(
              runSpacing: 10,
              spacing: 10,
              children: [
                for (int i = 0; i < MyConst.skillItems.length; i++)
                  Chip(
                    label: Text(MyConst.skillItems[i]["title"]),
                    avatar: Image.asset(MyConst.skillItems[i]["img"]),
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    backgroundColor: MyConst.bgLight2,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),side: const BorderSide(style: BorderStyle.none)),
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
