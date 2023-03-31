import 'package:flutter/material.dart';
import '../../../classes/project.dart';
import 'project_icon.dart';
import 'project_name.dart';

class ProjectItem extends StatelessWidget {
  final Project project;
  const ProjectItem({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Container(
      width: 585,
      height: 487,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image:   DecorationImage(image: AssetImage(project.backgroundImage,),fit: BoxFit.fill)
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            ProjectIcon( icon: project.icon,),
            const SizedBox(height: 20,),
            ProjectName(name: project.name,isDark: project.isDark,),
            const SizedBox(height: 20,),


          ],
        ),
      ),
    );;
  }
}
