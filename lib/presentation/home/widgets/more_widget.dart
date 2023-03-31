import 'package:flutter/material.dart';
import 'package:portfolio/extensions/typography_extension.dart';

class MoreWidget extends StatelessWidget {
  const MoreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Text('More About Me >',style: context.secondaryTitleMedium!.copyWith(color:  Colors.blueGrey.shade700,decoration: TextDecoration.underline,fontWeight: FontWeight.w400),);
  }
}
