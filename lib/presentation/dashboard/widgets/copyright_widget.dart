import 'package:flutter/material.dart';
import 'package:portfolio/extensions/typography_extension.dart';

import '../../../app_constants.dart';

class CopyrightWidget extends StatefulWidget {
  final int type;
  const CopyrightWidget({Key? key, required this.type}) : super(key: key);

  @override
  State<CopyrightWidget> createState() => _CopyrightWidgetState();
}

class _CopyrightWidgetState extends State<CopyrightWidget> {
  @override
  Widget build(BuildContext context) {
    return Text('Copyright ©2023 All rights reserved | This website is made \u2665 by FlutterFly',style: context.secondaryLabelLarge!.copyWith(color: widget.type!=1? CLR.secondaryTextColor:const Color(0x99000000)),textAlign: TextAlign.center,);

  }
}
