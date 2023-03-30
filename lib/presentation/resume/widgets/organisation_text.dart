import 'package:flutter/material.dart';
import 'package:portfolio/extensions/typography_extension.dart';

class OrganisationName extends StatelessWidget {
  final String orgName;
  const OrganisationName({Key? key, required this.orgName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(orgName,style:context.titleSmall!.copyWith(fontWeight: FontWeight.w500,fontSize: 15),);
  }
}
