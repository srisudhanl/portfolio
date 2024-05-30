import 'dart:js' as js;

import 'package:emailjs/emailjs.dart';
import 'package:flutter/material.dart';

import '../myConst.dart';
import 'custom_textField.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageContrroller = TextEditingController();
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
            child: CustomTextField(
              controller: messageContrroller,
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
                  onPressed: () async{
                    Map<String, dynamic> templateParams = {
                      'from_name':nameController.text.trim(),
                      'to_name':"Srisudhan",
                      'message':messageContrroller.text.trim()
                    };

                    try {
                      await EmailJS.send(
                        MyConst.emailJsServiceId,
                        MyConst.emailJsTemplateId,
                        templateParams,
                        const Options(
                          publicKey: MyConst.emailJsPublicKey,
                          privateKey: MyConst.emailJsPrivateKey,
                        ),
                      );
                      print('SUCCESS!');
                    } catch (error) {
                      print(error.toString());
                    }
                  },
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
    return Row(
      children: [
        Flexible(
            child: CustomTextField(
              controller: nameController,
          hintText: "Your Name",
        )),
        const SizedBox(
          width: 15,
        ),
        Flexible(
            child: CustomTextField(
              controller: emailController,
          hintText: "Your Email",
        )),
      ],
    );
  }

  Widget buildNameAndEmailWidgetMobile() {
    return Column(
      children: [
        Flexible(
            child: CustomTextField(
              controller: nameController,
          hintText: "Your Name",
        )),
        const SizedBox(
          height: 15,
        ),
        Flexible(
            child: CustomTextField(
              controller: emailController,
          hintText: "Your Email",
        )),
      ],
    );
  }
}
