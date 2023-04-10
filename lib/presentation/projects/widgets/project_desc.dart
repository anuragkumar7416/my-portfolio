import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../app_constants.dart';




class ProjectDesc extends StatelessWidget {
  final String desc;
  final bool isDark;
  const ProjectDesc({Key? key, required this.desc, required this.isDark}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(desc,style: GoogleFonts.montserrat(fontSize: 15,fontWeight: FontWeight.w500,color: CLR.secondaryTextColor,height: 2),textAlign: TextAlign.start,);
  }
}
