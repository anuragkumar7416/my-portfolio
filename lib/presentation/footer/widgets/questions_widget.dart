import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/extensions/typography_extension.dart';
import 'package:portfolio/presentation/footer/widgets/footer_title.dart';

import '../../../app_constants.dart';

class QuestionsWidget extends StatelessWidget {
  const QuestionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        FooterTitle(text: 'Have a Questions?'),
        MyContactInfoRow(text: '203 Fake St. Mountain View, San Francisco, California, USA', icon: Icons.location_on),
        MyContactInfoRow(text: '+91-9354994778', icon: Icons.phone),
        MyContactInfoRow(text: 'anuragkumar7416@gmail.com', icon: Icons.email),


      ],
    );
  }
}


class MyContactInfoRow extends StatelessWidget {
  final String text;
  final IconData icon;
  const MyContactInfoRow({Key? key, required this.text, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Icon(icon,color: Colors.white,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text,style: context.secondaryBodyLarge!.copyWith(color: CLR.secondaryTextColor),),
          )
        ],
      ),
    );
  }
}



