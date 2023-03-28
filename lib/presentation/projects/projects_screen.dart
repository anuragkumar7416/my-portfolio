import 'package:flutter/material.dart';
import 'package:portfolio/commonWidgets/page_header.dart';
import 'package:portfolio/presentation/projects/widgets/projects_widget.dart';

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
          const PageHeader(heading: 'Projects'),
          GridView.builder(
            shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 30,mainAxisSpacing: 30),
              itemBuilder: (context, index) {
                return Container(
                  width: 200,
                  height: 200,
                  color: Colors.teal,
                );
              }),
        ],
      ),
    );
  }
}
