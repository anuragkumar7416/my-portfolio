import 'package:flutter/material.dart';

class ProjectsWidget extends StatelessWidget {
  final String image;
  const ProjectsWidget({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 585,
      height: 435,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Stack(
        children: [
          Image.asset(image),
        ],
      ),
    );
  }
}
