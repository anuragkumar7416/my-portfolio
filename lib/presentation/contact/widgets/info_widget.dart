import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/extensions/typography_extension.dart';

import '../../../app_constants.dart';

class InfoWidget extends StatelessWidget {
  final String keyText;
  final String  value;
  const InfoWidget({Key? key, required this.keyText, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Flexible(
      child: RichText(
        text: TextSpan(
          text: '$keyText : ',
          style: GoogleFonts.montserrat(color: CLR.secondaryTextColor,fontSize: 15,height: 2,),
          children:  <TextSpan>[
            TextSpan(
                text: value,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,)),
          ],
        ),
      ),
    );
  }
}
