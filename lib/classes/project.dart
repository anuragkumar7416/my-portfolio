import 'package:flutter/material.dart';

class Project {
  final String name;
  final String desc;
  final String icon;
  final String backgroundImage;
  final String projectUrl;
  final bool onIos;
  final bool onWeb;
  final bool onAndroid;
  final Color hoverColor;


  Project(this.name, this.desc, this.icon, this.backgroundImage,this.projectUrl,this.hoverColor,
      {this.onIos = false, this.onWeb = false, this.onAndroid = false});
}
