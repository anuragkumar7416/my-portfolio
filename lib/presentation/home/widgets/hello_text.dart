import 'package:flutter/material.dart';
import 'package:portfolio/extensions/typography_extension.dart';

import '../../../app_constants.dart';

class HelloText extends StatelessWidget {
  const HelloText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Text('Hello I\'m',style: context.headlineSmall!.copyWith(color: CLR.secondaryTextColor),);
  }
}
