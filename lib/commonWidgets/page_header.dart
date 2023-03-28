import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/extensions/typography_extension.dart';

class PageHeader extends StatelessWidget {
  final String heading;
  const PageHeader({Key? key, required this.heading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(heading,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 34,),);
  }
}
