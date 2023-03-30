import 'package:flutter/material.dart';
import 'package:portfolio/extensions/typography_extension.dart';

class TimelineHeader extends StatelessWidget {
  final String heading;
  const TimelineHeader({Key? key, required this.heading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(heading,style:context.headlineLarge!.copyWith(fontWeight: FontWeight.w900,fontSize: 20),);
  }
}
