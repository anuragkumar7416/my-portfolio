import 'package:flutter/material.dart';
import 'package:portfolio/app_constants.dart';

class CircularPhoto extends StatelessWidget {
  const CircularPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,dimens) {
        return Container(
          height: 200,
          width: 200,
          margin: const EdgeInsets.only(top: 24,bottom: 24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),

            image: const DecorationImage(image: AssetImage(ImagePaths.myPicture,),fit: BoxFit.cover)
          ),
          // child: Image.asset(ImagePaths.myPicture),
        );
      }
    );
    
  }
}
