import 'package:flutter/material.dart';
import 'package:portfolio/extensions/typography_extension.dart';

class CopyrightWidget extends StatefulWidget {
  const CopyrightWidget({Key? key}) : super(key: key);

  @override
  State<CopyrightWidget> createState() => _CopyrightWidgetState();
}

class _CopyrightWidgetState extends State<CopyrightWidget> {
  @override
  Widget build(BuildContext context) {
    return Text('Copyright ©2023 All rights reserved | This website is made by FlutterFly',style: context.secondaryLabelLarge,textAlign: TextAlign.center,);

  }
}
