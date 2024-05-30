import 'dart:js' as js;

import 'package:flutter/material.dart';

import '../myConst.dart';
import 'custom_textField.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: MyConst.bgLight1,
      child: Column(
        children: [
          const Text(
            "Get in touch",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: MyConst.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700, maxHeight: 100),
            child: LayoutBuilder(builder: (context, constraints) {
              if (!isWeb()) {
                return buildNameAndEmailWidgetMobile();
              }
              if (constraints.maxWidth >= MyConst.minDesktopSize) {
                return buildNameAndEmailWidgetDesktop();
              }
              return buildNameAndEmailWidgetMobile();
            }),
          ),
          const SizedBox(
            height: 15,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: const CustomTextField(
              hintText: "Your Message",
              maxLines: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: MyConst.yellowPrimary, padding: const EdgeInsets.all(20)),
                  onPressed: () {},
                  child: const Text(
                    "Get in touch",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: MyConst.whitePrimary,
                    ),
                  )),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: const Divider(),
          ),
          const SizedBox(
            height: 15,
          ),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                child: Image.asset(
                  "assets/github.png",
                  width: 28,
                ),
                onTap: () {
                  js.context.callMethod('open',[MyConst.github]);
                },
              ),
              InkWell(
                child: Image.asset(
                  "assets/linked_in.png",
                  width: 28,
                ),
                onTap: () {
                  js.context.callMethod('open',[MyConst.linkedIn]);
                },
              ),
              InkWell(
                child: Image.asset(
                  "assets/telegram.png",
                  width: 28,
                ),
                onTap: () {
                  js.context.callMethod('open',[MyConst.telegram]);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildNameAndEmailWidgetDesktop() {
    return const Row(
      children: [
        Flexible(
            child: CustomTextField(
          hintText: "Your Name",
        )),
        SizedBox(
          width: 15,
        ),
        Flexible(
            child: CustomTextField(
          hintText: "Your Email",
        )),
      ],
    );
  }

  Widget buildNameAndEmailWidgetMobile() {
    return const Column(
      children: [
        Flexible(
            child: CustomTextField(
          hintText: "Your Name",
        )),
        SizedBox(
          height: 15,
        ),
        Flexible(
            child: CustomTextField(
          hintText: "Your Email",
        )),
      ],
    );
  }
}
