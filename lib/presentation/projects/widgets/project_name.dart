import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectName extends StatelessWidget {
  final String name;
  final bool isDark;
  const ProjectName({Key? key, required this.name, required this.isDark}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Text(name,style: GoogleFonts.poppins(fontSize: 28,fontWeight: FontWeight.w600,color: isDark?Colors.black:Colors.white),);
  }
}
