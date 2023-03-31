import 'package:flutter/material.dart';
import 'package:portfolio/common_functions/url_launcher.dart';

class SocialAccountIcon extends StatelessWidget {
  final String imagePath;
  final String url;
  const SocialAccountIcon({Key? key, required this.imagePath, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        onPressed: ()=> UrlLauncher.launchWeb(url),
          icon: Image.asset(imagePath,width: 20,height: 20,)),
    );

  }
}
