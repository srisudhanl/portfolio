import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyConst {
  static const Color scaffoldBg = Color(0xff252734);
  static const Color bgLight1 = Color(0xff333646);
  static const Color bgLight2 = Color(0xff424657);
  static const Color textFieldBg = Color(0xffC8C9CE);
  static const Color hintDark = Color(0xff666874);
  static const Color yellowSecondary = Color(0xffFFC25C);
  static const Color yellowPrimary = Color(0xffFFAF29);
  static const Color whiteSecondary = Color(0xffC8C9CE);
  static const Color whitePrimary = Color(0xffEAEAEB);

  static List<String> navTitles = [
    "Home",
    "Skills",
    "Projects",
    "Contact",
    "Resume",
  ];

  static List<IconData> navIcons = [
    Icons.home_rounded,
    Icons.handyman_rounded,
    Icons.apps_rounded,
    Icons.web_rounded,
    Icons.quick_contacts_mail_rounded,
  ];

  static double minDesktopSize = 600.0;

  static List<Map> platformItems = [
    {"img":"assets/andoid.png","title":"Android Dev"},
    {"img":"assets/web.png","title":"Web Dev"},
    {"img":"assets/ios.png","title":"IOS Dev"},
    {"img":"assets/machine_learning.png","title":"ML DEV"}
  ];

  static List<Map> skillItems = [
    {"img":"assets/flutter.png","title":"Flutter"},
    {"img":"assets/dart.png","title":"Dart"},
    {"img":"assets/java.png","title":"Java"},
    {"img":"assets/mongodb.png","title":"Mongo DB"},
    {"img":"assets/pandas.png","title":"Pandas"},
    {"img":"assets/python.png","title":"Python"},
    {"img":"assets/typescript.png","title":"Typescript"},
    {"img":"assets/aws.png","title":"AWS"},
  ];

  static const String github = "https://github.com/srisudhanl";
  static const String telegram = "https://t.me/@Srisudhan0403";
  static const String linkedIn = "https://www.linkedin.com/in/srisudhan-lakshmanan-077219248/";
  static const String emailJsServiceId = "service_uaiotgl";
  static const String emailJsPublicKey = "g7b_Tt0WpmzH2eLMD";
  static const String emailJsPrivateKey = "LZM-lyb1GXQN9C6eQJTpf";
  static const String emailJsTemplateId = "template_5qqhqu6";
}

bool isWeb() {
  return kIsWeb;
}