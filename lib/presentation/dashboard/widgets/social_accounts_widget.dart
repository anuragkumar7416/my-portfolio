import 'package:flutter/material.dart';
import 'package:portfolio/app_constants.dart';
import 'package:portfolio/presentation/dashboard/widgets/social_account_icon.dart';

class SocialAccountsWidget extends StatefulWidget {
  const SocialAccountsWidget({Key? key}) : super(key: key);

  @override
  State<SocialAccountsWidget> createState() => _SocialAccountsWidgetState();
}

class _SocialAccountsWidgetState extends State<SocialAccountsWidget> {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SocialAccountIcon(imagePath: ImagePaths.facebookIcon,),
          SocialAccountIcon(imagePath: ImagePaths.twitterIcon,),
          SocialAccountIcon(imagePath: ImagePaths.instagramIcon,),
          SocialAccountIcon(imagePath: ImagePaths.linkedinIcon,),
        ],
      ),
    );
  }
}
