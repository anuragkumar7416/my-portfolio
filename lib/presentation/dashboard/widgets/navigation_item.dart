import 'package:flutter/material.dart';
import 'package:portfolio/extensions/typography_extension.dart';

import '../../../app_constants.dart';


class NavigationItemWidget extends StatefulWidget {
  final String title;
  final void  onTapCallBack;
  const NavigationItemWidget({Key? key, required this.title, required this.onTapCallBack}) : super(key: key);

  @override
  State<NavigationItemWidget> createState() => _NavigationItemWidgetState();
}

class _NavigationItemWidgetState extends State<NavigationItemWidget> {
   Color color= CLR.secondaryTextColor;
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
      child: GestureDetector(
        onTap: (){



        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(widget.title,style: context.titleMedium!.copyWith(fontWeight: FontWeight.w700,color: color),),
            ],
          ),
        ),
      ),
    );
  }
}
