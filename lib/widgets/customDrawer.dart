import 'package:flutter/material.dart';

import '../myConst.dart';

class CustomDrawer extends StatelessWidget {
  final Function(int) onNavItemTap;
  const CustomDrawer({super.key,required this.onNavItemTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: MyConst.scaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close),
              ),
            ),
          ),
          for (int i = 0; i < MyConst.navIcons.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30),
              titleTextStyle: const TextStyle(color: MyConst.whitePrimary, fontWeight: FontWeight.w600, fontSize: 16),
              leading: Icon(MyConst.navIcons[i]),
              title: Text(MyConst.navTitles[i]),
              onTap: () {onNavItemTap(i);},
            ),
        ],
      ),
    );
  }
}
