import 'package:flutter/material.dart';
import 'package:portfolio/extensions/typography_extension.dart';

import '../../../app_constants.dart';

class TimelineDesc extends StatelessWidget {
  final String desc;
  const TimelineDesc({Key? key, required this.desc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Text(desc,
        style: context.secondaryTitleSmall!.copyWith(
            color: CLR.secondaryTextColor,
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
            height: 2),
        textAlign: TextAlign.start,
      ),
    );
  }
}