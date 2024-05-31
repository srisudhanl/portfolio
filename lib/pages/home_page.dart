import 'package:flutter/material.dart';
import 'package:portfolio/myConst.dart';
import 'package:portfolio/pages/resume_page.dart';
import 'package:portfolio/widgets/contact_section.dart';
import 'package:portfolio/widgets/customDrawer.dart';
import 'package:portfolio/widgets/footer_widget.dart';

import '../widgets/header_mobile.dart';
import '../widgets/header_web.dart';
import '../widgets/main_desktop.dart';
import '../widgets/main_mobile.dart';
import '../widgets/projects.dart';
import '../widgets/skills_mobile.dart';
import '../widgets/skils_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<GlobalKey> navBarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final scaffoldKey = GlobalKey<ScaffoldState>();
    final scrollController = ScrollController();

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: MyConst.scaffoldBg,
          endDrawer: constraints.maxWidth >= MyConst.minDesktopSize
              ? null
              : CustomDrawer(
                  onNavItemTap: (int navIndex) {
                    scaffoldKey.currentState?.closeEndDrawer();
                    scrollToSection(navIndex);
                  },
                ),
          body: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                SizedBox(
                  key: navBarKeys.first,
                ),
                isWeb()
                    ? constraints.maxWidth >= MyConst.minDesktopSize
                        ? HeaderWeb(
                            onNavMenuTap: (int navIndex) {
                              scrollToSection(navIndex);
                            },
                          )
                        : HeaderMobile(
                            onTap: () {},
                            onMenuTap: () {
                              scaffoldKey.currentState?.openEndDrawer();
                            },
                          )
                    : HeaderMobile(
                        onTap: () {},
                        onMenuTap: () {
                          scaffoldKey.currentState?.openEndDrawer();
                        },
                      ),
                isWeb()
                    ? constraints.maxWidth >= MyConst.minDesktopSize + 280
                        ? MainDesktop(
                            onTap: () {
                              scrollToSection(3);
                            },
                          )
                        : MainMobile(
                            onTap: () {
                              scrollToSection(3);
                            },
                          )
                    : MainMobile(
                        onTap: () {
                          scrollToSection(3);
                        },
                      ),
                Container(
                  key: navBarKeys[1],
                  height: isWeb()
                      ? constraints.maxWidth >= MyConst.minDesktopSize + 450
                          ? 350
                          : 650
                      : 650,
                  width: screenSize.width,
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                  color: MyConst.bgLight1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "What I can do",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: MyConst.whitePrimary,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      isWeb()
                          ? constraints.maxWidth >= MyConst.minDesktopSize + 280
                              ? SkillsDesktop()
                              : SkillsMobile()
                          : SkillsMobile(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Projects(
                  key: navBarKeys[2],
                ),
                const SizedBox(
                  height: 30,
                ),
                ContactSection(
                  key: navBarKeys[3],
                ),
                FooterWidget()
              ],
            ),
          ),
        );
      },
    );
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const ResumePage()));
      return;
    }
    final key = navBarKeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!, duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
