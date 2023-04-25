import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/common_functions/url_launcher.dart';
import 'package:portfolio/extensions/typography_extension.dart';

import '../../../app_constants.dart';

class CopyrightWidget extends StatefulWidget {
  final int type;

  const CopyrightWidget({Key? key, required this.type}) : super(key: key);

  @override
  State<CopyrightWidget> createState() => _CopyrightWidgetState();
}

class _CopyrightWidgetState extends State<CopyrightWidget> {

  bool isHovered = false;
  void _handleOnTap() {
    UrlLauncher.launchWeb('https://github.com/flutterflytech');
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text:
            'Copyright ©2023 All rights reserved | This website is made with \u2665 Flutter by ',
        style: context.secondaryLabelLarge!.copyWith(
            color: widget.type != 1
                ? CLR.secondaryTextColor
                : const Color(0x99000000)),
        children: <TextSpan>[
          TextSpan(
            text: 'FlutterFly Team',
            style: context.secondaryLabelLarge!.copyWith(
                color: widget.type != 1
                    ? CLR.secondaryTextColor
                    : CLR.orangeShade,
            decoration: isHovered?TextDecoration.underline:TextDecoration.none),
            recognizer: TapGestureRecognizer()..onTap = _handleOnTap,
            onEnter: (event){
              setState(() {
                isHovered= true;
              });

            },
            onExit: (event){
              setState(() {
                isHovered= false;
              });

            },
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
