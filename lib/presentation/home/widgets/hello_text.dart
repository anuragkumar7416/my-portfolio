import 'package:flutter/material.dart';
import 'package:portfolio/extensions/breakpoints_extension.dart';
import 'package:portfolio/extensions/typography_extension.dart';

import '../../../app_constants.dart';

class HelloText extends StatelessWidget {
  const HelloText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (context,dimens) {
        return Text('Hello I\'m',style: dimens.isTablet?context.headlineSmall!.copyWith(color: CLR.footerColor.withOpacity(0.8)):context.titleLarge!.copyWith(color: CLR.footerColor.withOpacity(0.8)),);
      }
    );
  }
}
