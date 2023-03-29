import 'package:flutter/material.dart';
import 'package:portfolio/commonWidgets/page_header.dart';
import 'package:portfolio/presentation/projects/widgets/projects_widget.dart';

import '../../app_constants.dart';
import '../../classes/project.dart';
import '../footer/footer_screen.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProjectsWidget(),


          const Footer(),
        ],
      ),
    );
  }
}
