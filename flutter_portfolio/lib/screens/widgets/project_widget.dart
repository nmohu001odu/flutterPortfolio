import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/project_model.dart';

class ProjectWidget extends StatelessWidget {
  final Project projectData;
  const ProjectWidget({super. key, required this.projectData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenConstraint().width * 0.9,
      child: Card(
        color: const Color.fromARGB(255, 5, 7, 31),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(
                  Icons.build,
                  color: kGrey,
                  size: 18,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  projectData.name,
                  style: kSectionTitleText,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              projectData.description,
            style: TextStyle(color: const Color.fromARGB(255, 191, 190, 190)
          ),
                            
            ),
          ),
          const Spacer(),
        
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () async {
                  //Launch project on GitHub
                  final Uri url = Uri.parse(projectData.link);
                  await launchUrl(url);
                },
                child: Text(
                  "View Project",
                  style: kSubTitleText.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
