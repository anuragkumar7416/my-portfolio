import 'package:flutter/material.dart';
import 'package:portfolio/extensions/typography_extension.dart';

class NameText extends StatelessWidget {
  const NameText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: LayoutBuilder(
        builder: (context,dimens) {
          if(dimens.maxWidth>850){
            return Text('Anurag Kumar',style: context.headlineLarge!.copyWith(fontWeight: FontWeight.w900,fontSize: 40),);

          }else{
            return Text('Anurag Kumar',style: context.headlineLarge!.copyWith(fontWeight: FontWeight.w900,fontSize: 30),);

          }


        }
      ),
    );
  }
}
