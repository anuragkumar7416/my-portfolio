import 'package:flutter/material.dart';
import 'package:portfolio/extensions/typography_extension.dart';

class FooterTitle extends StatelessWidget {
  final String text;

  const FooterTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.titleLarge!
          .copyWith(color: Colors.white, fontWeight: FontWeight.w700),
    );
  }
}
