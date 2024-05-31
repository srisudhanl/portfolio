import 'package:flutter/material.dart';

import '../myConst.dart';


class MainMobile extends StatelessWidget {
  final VoidCallback onTap;
  const MainMobile({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40,vertical: 30),
      height: screenSize.height/2,
      constraints: BoxConstraints(minHeight: 660),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: [MyConst.scaffoldBg.withOpacity(0.6), MyConst.scaffoldBg.withOpacity(0.6)],
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/flutter_dash.png",
              width: screenSize.width,
            ),
          ),
          SizedBox(height: 30,),
          const Text(
            "Hi,\nI'm Srisudhan Lakshmanan\nA Flutter Developer",
            style: TextStyle(
              fontSize: 20,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: MyConst.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 250,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: MyConst.yellowPrimary, padding: EdgeInsets.all(20)),
              onPressed: () => onTap!(),
              child: const Text(
                "Get in touch",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: MyConst.whitePrimary),
              ),
            ),
          )
        ],
      ),
    );
  }
}
