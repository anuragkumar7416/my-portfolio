
import 'package:flutter/material.dart';

class ProjectIcon extends StatelessWidget {
  final String icon;
  const ProjectIcon({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 58,
      height: 58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
          image:  DecorationImage(image: AssetImage(icon,),fit: BoxFit.cover)
      ),
    );
  }
}
