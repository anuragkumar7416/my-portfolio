import 'package:flutter/material.dart';
import 'package:portfolio/extensions/typography_extension.dart';

import '../../../app_constants.dart';


class NavigationItemWidget extends StatefulWidget {
  final String title;
  final int index;
  final int currentIndex;

  const NavigationItemWidget({Key? key, required this.title, required this.index, required this.currentIndex}) : super(key: key);

  @override
  State<NavigationItemWidget> createState() => _NavigationItemWidgetState();
}

class _NavigationItemWidgetState extends State<NavigationItemWidget> {
   Color color= CLR.secondaryTextColor;

  bool  ifCurrentLocation(){
     if(widget.currentIndex==widget.index) {
       return true;
     } else {
       return false;
     }
   }
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event){
        setState(() {
          color = Colors.black;
        });
      },
      onExit: (event){
        setState(() {
          color = CLR.secondaryTextColor;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(widget.title,style: context.titleMedium!.copyWith(fontWeight: FontWeight.w700,color: ifCurrentLocation()?Colors.black:color),),
          ],
        ),
      ),
    );
  }
}
