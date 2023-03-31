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
        ' I\'m a developer with 2 years of experience in Flutter and Dart, and I also have knowledge in Android, Java, Firebase,\n and iOS development. I have a strong passion for programming and love using my skills to create innovative\n solutions. When I\'m not coding, I enjoy exploring new places, trying different types of cuisine, and listening to\n music. My diverse interests help me stay motivated and creative both inside and outside of work.',
        style: context.secondaryTitleMedium!.copyWith(
            color: CLR.footerColor.withOpacity(0.7),
            fontWeight: FontWeight.w900,
            letterSpacing: 1,
            height: 2),
        textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
