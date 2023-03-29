import 'package:flutter/material.dart';

class ProjectTech extends StatelessWidget {
  final String imageUrl;
  const ProjectTech({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 28,
        height: 28,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2)
        ),
        child: Image.network(imageUrl));
  }
}
