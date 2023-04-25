import 'package:flutter/material.dart';
import 'package:portfolio/extensions/breakpoints_extension.dart';
import 'package:portfolio/presentation/contact/widgets/info_widget.dart';

class ContactRow extends StatelessWidget {
  const ContactRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<List<String>> list = [
      ['Address','New Delhi, India'],
      ['Phone','+91-9354994778'],
      ['Email' ,'anuragkumar7416@gmail.com'],
      ['Website','yoursite@domain.com'],
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 24,bottom: 24),
      child: LayoutBuilder(
        builder: (context,dimens) {
          if(dimens.isTablet){
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for(final i in list)
                  InfoWidget(keyText: i[0],value:i[1]),
              ],
            );

          }else{
            return SizedBox(
              height: 220,
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for(final i in list)
                    InfoWidget(keyText: i[0],value:i[1]),
                ],
              ),
            );

          }

        }
      ),
    );
  }
}
