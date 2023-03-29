import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectDesc extends StatelessWidget {
  final String desc;
  final bool isDark;
  const ProjectDesc({Key? key, required this.desc, required this.isDark}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(desc,style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.normal,color: isDark?Colors.black:Colors.white),textAlign: TextAlign.start,);
  }
}
