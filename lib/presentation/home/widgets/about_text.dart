import 'package:flutter/material.dart';
import 'package:portfolio/extensions/typography_extension.dart';

import '../../../app_constants.dart';

class AboutText extends StatelessWidget {
  const AboutText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Text(
        'I am A Blogger Far far away, behind the word mountains, far from the countries Vokalia and\nConsonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast\n of the Semantics, a large language ocean.',
        style: context.secondaryTitleMedium!.copyWith(
            color: CLR.secondaryTextColor,
            fontWeight: FontWeight.w900,
            letterSpacing: 1,
            height: 2),
        textAlign: TextAlign.center,
      ),
    );
  }
}
