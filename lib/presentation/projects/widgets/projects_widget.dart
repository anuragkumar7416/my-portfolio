import 'package:flutter/material.dart';
import 'package:portfolio/app_constants.dart';
import 'package:portfolio/extensions/breakpoints_extension.dart';

import '../../../classes/project.dart';
import '../../../commonWidgets/page_header.dart';
import 'project_item.dart';

class ProjectsWidget extends StatelessWidget {
  ProjectsWidget({
    Key? key,
  }) : super(key: key);
  final List<Project> listOfProject = [
    Project(
        'Mob HRM',
        'Mob\'s HRM, Mobcoder employees\'digital companion, is an in-house app of Mobcoder Technologies. The app lets company employees order food and track their Mobcoder life.',
        ImagePaths.hrmIcon,
        ImagePaths.backgroundHrm,
        'https://play.google.com/store/apps/details?id=com.mob.kitchen_hrm',
        Colors.indigo.shade300),
    Project(
        'Fedora MBanking',
        'Fedora India introduces official integrated mobile banking app which consists existing mobile banking app, M Passbook app & Door step Banking app.',
        ImagePaths.fedoraIcon,
        ImagePaths.backgroundFedora,
        'https://play.google.com/store/search?q=fedora+mbanking&c=apps',
        Colors.amber.shade300),
  ];

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        const PageHeader(heading: 'Projects'),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: LayoutBuilder(builder: (context, dimens) {
            if (dimens.isTablet) {
              return GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: listOfProject.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 30,
                      mainAxisExtent: 700),
                  itemBuilder: (context, index) {
                    return ProjectItem(
                      project: listOfProject[index],
                    );
                  });
            } else {
              return ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: listOfProject.length,
                itemBuilder: (context, index) {
                  return ProjectItem(
                    project: listOfProject[index],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 40,
                  );
                },
              );
            }
          }),
        ),
      ],
    );
  }
}
