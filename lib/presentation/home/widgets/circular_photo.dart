import 'package:flutter/material.dart';
import 'package:portfolio/app_constants.dart';

class CircularPhoto extends StatelessWidget {
  const CircularPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,dimens) {
        bool isCheck = dimens.maxWidth>850;
        return Container(
          height: isCheck?200:100,
          width: isCheck?200:100,
          margin: const EdgeInsets.only(top: 24,bottom: 24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(isCheck?100:50),

            image: const DecorationImage(image: AssetImage(ImagePaths.myPicture,),fit: BoxFit.cover)
          ),
          // child: Image.asset(ImagePaths.myPicture),
        );
      }
    );
    
  }
}
