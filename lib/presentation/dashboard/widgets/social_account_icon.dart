import 'package:flutter/material.dart';

class SocialAccountIcon extends StatelessWidget {
  final String imagePath;
  const SocialAccountIcon({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(imagePath,width: 20,height: 20,),
    );

  }
}
