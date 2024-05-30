import 'package:flutter/material.dart';
import 'package:portfolio/widgets/project_card_widget.dart';

import '../myConst.dart';
import '../utils/project_utils.dart';


class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Work Projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: MyConst.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < workProjectUtils.length; i++)
                  ProjectCards(
                    project: workProjectUtils[i],
                  )
              ],
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Hobby Projects",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: MyConst.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < hobbyProjectUtils.length; i++)
                  ProjectCards(
                    project: hobbyProjectUtils[i],
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
