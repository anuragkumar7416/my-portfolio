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
        'Mob\'s HRM, Mobcoder employees\'digital\ncompanion, is an\nin-house app of Mobcoder\nTechnologies. The app\nlets company employees\norder food and track\ntheir Mobcoder life.',
        ImagePaths.hrmIcon,
        ImagePaths.backgroundHrm,
        Colors.indigo.shade300),
    Project(
        'Fedora MBanking',
        'Fedora India introduces official\nintegrated mobile banking app\nwhich consists existing mobile banking\napp, M Passbook app & Door step\nBanking app.',
        ImagePaths.fedoraIcon,
        ImagePaths.backgroundFedora,
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
          child: LayoutBuilder(
            builder: (context,dimens) {
              if(dimens.isTablet){
                return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: listOfProject.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 30,
                        mainAxisSpacing: 30,
                        mainAxisExtent: 400),
                    itemBuilder: (context, index) {
                      return ProjectItem(
                        project: listOfProject[index],
                      );
                    });

              }else{
                return ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: listOfProject.length,
                    itemBuilder: (context, index) {
                      return ProjectItem(
                        project: listOfProject[index],
                      );
                    }, separatorBuilder: (BuildContext context, int index) { return const SizedBox(height: 20,); },);

              }

            }
          ),
        ),
      ],
    );
  }
}
