import 'package:flutter/material.dart';

import '../myConst.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 500),
      child: Column(
        children: [
          for (int i = 0; i < MyConst.platformItems.length; i++)
            Container(
              margin: EdgeInsets.only(bottom: 5),
              width: double.maxFinite,
              decoration: BoxDecoration(color: MyConst.bgLight2, borderRadius: BorderRadius.circular(5)),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                leading: Image.asset(
                  MyConst.platformItems[i]["img"],
                  width: 26,
                ),
                title: Text(MyConst.platformItems[i]["title"]),
              ),
            ),
          SizedBox(
            height: 45,
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < MyConst.skillItems.length; i++)
                Chip(
                  label: Text(MyConst.skillItems[i]["title"]),
                  avatar: Image.asset(MyConst.skillItems[i]["img"]),
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  backgroundColor: MyConst.bgLight2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), side: const BorderSide(style: BorderStyle.none)),
                )
            ],
          )
        ],
      ),
    );
  }
}
