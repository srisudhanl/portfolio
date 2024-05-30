import 'package:flutter/material.dart';
import 'package:portfolio/utils/project_utils.dart';

import '../myConst.dart';
import 'dart:js' as js;

class ProjectCards extends StatelessWidget {
  final ProjectUtils project;

  const ProjectCards({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          height: 300,
          width: 270,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: MyConst.bgLight2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(project.image, height: 120,width: 270, fit: BoxFit.fill),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
                child: Text(
                  project.title,
                  style: const TextStyle(fontWeight: FontWeight.w600, color: MyConst.whitePrimary),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                child: Text(
                  project.subTitle,
                  style: const TextStyle(fontSize: 11, color: MyConst.whiteSecondary),
                ),
              ),
              const Spacer(),
              Container(
                color: MyConst.bgLight1,
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Row(
                  children: [
                    (project?.iosLink != null || project?.androidLink != null || project?.webLink != null)
                        ? const Text(
                            "Available on:",
                            style: TextStyle(
                              color: MyConst.yellowSecondary,
                              fontSize: 10,
                            ),
                          )
                        : const Text(
                            "Not deployed.(only in GitHub)",
                            style: TextStyle(
                              color: MyConst.yellowSecondary,
                              fontSize: 10,
                            ),
                          ),
                    const Spacer(),
                    if (project?.androidLink != null)
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: InkWell(
                            onTap: () {
                              js.context.callMethod("open",[project.androidLink]);
                            },
                            child: Image.asset(
                              "assets/andoid.png",
                              width: 19,
                            )),
                      ),
                    if (project?.iosLink != null)
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: InkWell(
                            onTap: () {
                              js.context.callMethod("open",[project.iosLink]);
                            },
                            child: Image.asset(
                              "assets/ios.png",
                              width: 17,
                            )),
                      ),
                    if (project?.webLink != null)
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: InkWell(
                            onTap: () {
                              js.context.callMethod("open",[project.webLink]);
                            },
                            child: Image.asset(
                              "assets/web.png",
                              width: 17,
                            )),
                      ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
