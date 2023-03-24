import 'package:flutter/material.dart';
import 'package:portfolio/extensions/typography_extension.dart';

import '../../../app_constants.dart';

class LinkWidget extends StatelessWidget {
  final String linkName;
  const LinkWidget({Key? key, required this.linkName}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Text(linkName,style: context.secondaryBodyLarge!.copyWith(color: CLR.secondaryTextColor),);
  }
}
