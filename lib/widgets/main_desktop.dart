import 'package:flutter/material.dart';

import '../myConst.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: screenSize.height / 1.2,
      constraints: const BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hi,\nI'm Srisudhan Lakshmanan\nA Flutter Developer",
                style: TextStyle(
                  fontSize: 30,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: MyConst.whitePrimary,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 400,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: MyConst.yellowPrimary,padding: EdgeInsets.all(20)),
                  onPressed: () {},
                  child: const Text(
                    "Get in touch",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: MyConst.whitePrimary),
                  ),
                ),
              )
            ],
          ),
          Image.asset(
            "assets/flutter_dash.png",
            width: screenSize.width / 2,
          ),
        ],
      ),
    );
  }
}
